.class public Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;
.super Ljava/lang/Object;
.source "VOCommonPlayerImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOCommonPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOCommonPlayerImpl"


# instance fields
.field private context_:Landroid/content/Context;

.field private mConfig:Lcom/visualon/OSMPPlayer/VOPlayerConfig;

.field private mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

.field private mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

.field public mNativeContextAudio:J

.field private final mutex_:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 101
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    .line 102
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mConfig:Lcom/visualon/OSMPPlayer/VOPlayerConfig;

    .line 103
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v1, 0x0

    .line 106
    iput-wide v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mNativeContextAudio:J

    .line 107
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->context_:Landroid/content/Context;

    .line 113
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;-><init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 114
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-direct {v0, p0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;-><init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    return-void
.end method

.method private getBoolConfig(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 3949
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mConfig:Lcom/visualon/OSMPPlayer/VOPlayerConfig;

    if-nez v0, :cond_0

    return-object p1

    .line 3953
    :cond_0
    invoke-interface {v0, p2}, Lcom/visualon/OSMPPlayer/VOPlayerConfig;->valueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 3954
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    move-object p1, p2

    check-cast p1, Ljava/lang/Boolean;

    :cond_1
    return-object p1
.end method

.method private getObjConfig(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 3959
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mConfig:Lcom/visualon/OSMPPlayer/VOPlayerConfig;

    if-nez v0, :cond_0

    return-object p1

    .line 3963
    :cond_0
    invoke-interface {v0, p2}, Lcom/visualon/OSMPPlayer/VOPlayerConfig;->valueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    move-object p1, p2

    :cond_1
    return-object p1
.end method


# virtual methods
.method public addAnalyticsInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 3745
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3747
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3751
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 3752
    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeAddAnalyticsInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 3751
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3754
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "Fail to load JNI library"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 3748
    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3749
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3754
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public addConfiguration(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .line 1844
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz p1, :cond_6

    .line 1846
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1850
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    .line 1851
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const-string v3, "@@@VOCommonPlayerImpl"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x404

    if-gt v1, v4, :cond_1

    const-string v1, "string: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 1852
    invoke-static {v3, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1856
    :cond_1
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "audio_render_failed"

    .line 1858
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1859
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1860
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addConfiguration:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const p1, -0x7fffffeb

    .line 1861
    invoke-virtual {p0, p1, v4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1862
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1891
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :try_start_3
    const-string v2, "UUIDPrefix"

    .line 1865
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1867
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1868
    invoke-static {v1}, Lcom/visualon/OSMPUtils/voOSUniqID;->setDrmUUIDPrefix(Ljava/lang/String;)V

    .line 1869
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 1872
    :cond_3
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v1

    .line 1874
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-eqz v2, :cond_4

    .line 1875
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v1, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeAddConfiguration(Ljava/lang/String;)I

    move-result v1

    :cond_4
    if-eqz v1, :cond_5

    .line 1879
    invoke-static {p1}, Lcom/visualon/OSMPUtils/voLog;->AddConfigure(Ljava/lang/String;)I

    move-result v1

    .line 1882
    :cond_5
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1886
    :try_start_4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1889
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    goto :goto_0

    .line 1847
    :cond_6
    :goto_1
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_ARGUMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1891
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public canBePaused()Z
    .locals 4

    .line 340
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOCommonPlayerImpl"

    const-string v3, "The player is destroyed."

    .line 341
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 344
    :cond_0
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->canBePaused()Z

    move-result v0

    return v0
.end method

.method public canPlayIframeOnly()Z
    .locals 4

    .line 3497
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3499
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3503
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeCanPlayIframeOnly()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3505
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Fail to load JNI library"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 3500
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3505
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public clearSelection()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 2243
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2245
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ""

    new-array v1, v1, [Ljava/lang/Object;

    .line 2249
    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2250
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeClearSelection()I

    move-result v0

    .line 2251
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2253
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 2246
    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2247
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2253
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public close()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 661
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "@@@VOCommonPlayerImpl"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_1

    const-string v0, "The player is destroyed."

    new-array v2, v2, [Ljava/lang/Object;

    .line 668
    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 678
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :try_start_2
    const-string v0, ""

    new-array v1, v2, [Ljava/lang/Object;

    .line 671
    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->close()V

    .line 673
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->resetID3()V

    .line 675
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeClose()I

    move-result v0

    .line 676
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    const-string v0, "Fail to load JNI library"

    new-array v2, v2, [Ljava/lang/Object;

    .line 664
    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 678
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public commitSelection()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 2226
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2228
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ""

    new-array v1, v1, [Ljava/lang/Object;

    .line 2233
    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2234
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeCommitSelection()I

    move-result v0

    .line 2235
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2237
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 2229
    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2230
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2237
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public configureSynchronousPlayback(Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 3869
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->configureSynchronousPlayback(Lcom/visualon/OSMPPlayerImpl/OSMPSync/VOSynchronousType;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public destroy()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 556
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 567
    :try_start_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    const/4 v1, 0x0

    .line 568
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mConfig:Lcom/visualon/OSMPPlayer/VOPlayerConfig;

    .line 570
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-eqz v2, :cond_0

    .line 571
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->destroy()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    .line 572
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    .line 575
    :cond_0
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v2, :cond_1

    .line 576
    invoke-virtual {v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->destroy()V

    .line 577
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 580
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public disableClientSideDVR()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3842
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3844
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3849
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 3850
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeDisableClientDVR()I

    move-result v0

    .line 3849
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3852
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Fail to load JNI library"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 3845
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3846
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3852
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enableAnalytics(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableAnalytics(I)I

    move-result p1

    .line 218
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 212
    :cond_2
    :goto_1
    :try_start_1
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 220
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableAnalyticsAgent(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3511
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3513
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 3517
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, "true"

    goto :goto_0

    :cond_1
    const-string v2, "false"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3520
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 3521
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableAnalyticsAgent(Z)I

    move-result p1

    .line 3520
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3523
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_3
    :goto_2
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3514
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3515
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 3523
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableAnalyticsDisplay(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableAnalyticsDisplay(I)I

    move-result p1

    .line 127
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 122
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 129
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableAnalyticsExport(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3295
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3297
    :try_start_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "true"

    goto :goto_0

    :cond_0
    const-string v2, "false"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3300
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_2

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    new-array v1, v1, [Ljava/lang/Object;

    .line 3301
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3302
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3309
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 3304
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "VOAnalyticsExport"

    invoke-direct {p0, p1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getBoolConfig(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3305
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enableAnalyticsExport(Z)I

    move-result p1

    .line 3306
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 3309
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableAnalyticsFoundation(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3079
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3081
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 3086
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, "true"

    goto :goto_0

    :cond_1
    const-string v2, "false"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3089
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableAnalyticsFoundation(Z)I

    move-result p1

    .line 3090
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3092
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_3
    :goto_2
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3082
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3083
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 3092
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableAnalyticsFoundationLocation(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3190
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3192
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    new-array v1, v1, [Ljava/lang/Object;

    .line 3193
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3194
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3203
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 3196
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, "true"

    goto :goto_1

    :cond_1
    const-string v2, "false"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3199
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enableAnalyticsFoundationLocation(Z)I

    move-result p1

    .line 3200
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3203
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableAntiMirror(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3670
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3672
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 3677
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, "true"

    goto :goto_0

    :cond_1
    const-string v2, "false"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3680
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 3681
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableAntiMirror(Z)I

    move-result p1

    .line 3680
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3683
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_3
    :goto_2
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3673
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3674
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 3683
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableAudioDecoderLibrary(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_CODEC_TYPE;Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 1799
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1801
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1806
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_CODEC_TYPE;->getValue()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableAudioDecoderLibrary(IZ)I

    move-result p1

    .line 1808
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1810
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "Fail to load JNI library"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1802
    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1803
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1810
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableAudioEffect(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1513
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1515
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1520
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableAudioEffect(Z)I

    move-result p1

    .line 1521
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1523
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1516
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1517
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1523
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableAudioFocusManagement(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 3864
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enableAudioFocusManagement(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public enableAudioOnlyAdaptation(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1689
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1691
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 1696
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, "true"

    goto :goto_0

    :cond_1
    const-string v2, "false"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1699
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableAudioOnlyAdaptation(Z)I

    move-result p1

    .line 1700
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1702
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_3
    :goto_2
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1692
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1693
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1702
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableAudioRenderExport(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 274
    :try_start_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "true"

    goto :goto_0

    :cond_0
    const-string v2, "false"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_2

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    new-array v1, v1, [Ljava/lang/Object;

    .line 278
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 281
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enableAudioRenderExport(Z)I

    move-result p1

    .line 282
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 285
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableAudioStream(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1411
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1413
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableAudioStream(Z)I

    move-result p1

    .line 1419
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1421
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1414
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1415
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1421
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableCPUAdaptation(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1670
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1672
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 1677
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, "true"

    goto :goto_0

    :cond_1
    const-string v2, "false"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1680
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableCPUAdaptation(Z)I

    move-result p1

    .line 1681
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1683
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_3
    :goto_2
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1673
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1674
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1683
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableCardBoardVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3562
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3564
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "@@@VOCommonPlayerImpl"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 3568
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_1

    const-string p1, "The player is destroyed."

    new-array v0, v2, [Ljava/lang/Object;

    .line 3569
    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3570
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3578
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 3573
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string v1, "true"

    goto :goto_1

    :cond_2
    const-string v1, "false"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3576
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enableCardBoardVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v2, [Ljava/lang/Object;

    .line 3565
    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3566
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3578
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableClientSideDVR(JJ)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 3826
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3828
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3833
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 3834
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableClientDVR(JJ)I

    move-result p1

    .line 3833
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3836
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "Fail to load JNI library"

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    .line 3829
    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3830
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3836
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableCubemapVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3607
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3609
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "@@@VOCommonPlayerImpl"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 3613
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_1

    const-string p1, "The player is destroyed."

    new-array v0, v2, [Ljava/lang/Object;

    .line 3614
    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3615
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3623
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 3618
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable cube "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string v1, "true"

    goto :goto_1

    :cond_2
    const-string v1, "false"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3621
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enableCubemapVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v2, [Ljava/lang/Object;

    .line 3610
    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3611
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3623
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableDRMOfflineMode(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 3710
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3712
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3717
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 3718
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableDRMOfflineMode(Z)I

    move-result p1

    .line 3717
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3720
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3713
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3714
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3720
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableDSPClock(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1157
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1159
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1160
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1163
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enableDSPClock(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1165
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableDeblock(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1138
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1140
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 1145
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, "true"

    goto :goto_0

    :cond_1
    const-string v2, "false"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1148
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableDeblock(Z)I

    move-result p1

    .line 1149
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_3
    :goto_2
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1141
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1142
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1151
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableDolbyLibrary(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1782
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1784
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1789
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableDolbyLibrary(Z)I

    move-result p1

    .line 1790
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1792
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1785
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1786
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1792
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableFullScreen(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 2986
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "enableFullScreen"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2988
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2989
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    .line 2990
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2992
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableHTTPGzipRequest(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 2081
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "enableHTTPGzipRequest"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 2083
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2084
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_2

    .line 2089
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v1, "true"

    goto :goto_0

    :cond_1
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2092
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableHTTPGzipRequest(Z)I

    move-result p1

    .line 2093
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2095
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_3
    :goto_2
    :try_start_1
    const-string p1, "Fail to load JNI library"

    new-array v1, v2, [Ljava/lang/Object;

    .line 2085
    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2086
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 2095
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableLiveStreamingDVRPosition(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1223
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1225
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 1230
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, "true"

    goto :goto_0

    :cond_1
    const-string v2, "false"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1233
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 1234
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableLiveStreamingDVRPosition(Z)I

    move-result p1

    .line 1233
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_3
    :goto_2
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1226
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1227
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1236
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableLowLatencyMode(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1564
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1566
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1571
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1574
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableLowLatencyMode(Z)I

    move-result p1

    .line 1575
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1577
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1567
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1568
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1577
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableLowLatencyVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1443
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1445
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableLowLatencyVideo(Z)I

    move-result p1

    .line 1451
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1446
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1447
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1453
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enablePCMOutput(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1529
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1531
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1536
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnablePCMOutput(Z)I

    move-result p1

    .line 1537
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1539
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1532
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1533
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1539
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enablePersistentDrmLicense(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 3935
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3937
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3938
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3939
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3943
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 3941
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enablePersistentDrmLicense(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3943
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableRTSPOverHTTP(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1947
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1949
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableRTSPOverHTTP(Z)I

    move-result p1

    .line 1955
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1957
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1950
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1951
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1957
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableRecording(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3630
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3632
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    new-array v1, v1, [Ljava/lang/Object;

    .line 3633
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3634
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3641
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 3636
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable recording "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, "true"

    goto :goto_1

    :cond_1
    const-string v2, "false"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3639
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enableRecording(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3641
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableSEI(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SEI_INFO_FLAG;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1621
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1623
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1628
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SEI_INFO_FLAG;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableSEI(I)I

    move-result p1

    .line 1629
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1631
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1624
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1625
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1631
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableSEIPostProcessVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1637
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1639
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    new-array v1, v1, [Ljava/lang/Object;

    .line 1640
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1641
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1648
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1643
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, "true"

    goto :goto_1

    :cond_1
    const-string v2, "false"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1646
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enableSEIPostProcessVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1648
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableSphericalVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3584
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3586
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "@@@VOCommonPlayerImpl"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 3590
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_1

    const-string p1, "The player is destroyed."

    new-array v0, v2, [Ljava/lang/Object;

    .line 3591
    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3592
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3600
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 3595
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable spherical "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string v1, "true"

    goto :goto_1

    :cond_2
    const-string v1, "false"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3598
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enableSphericalVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v2, [Ljava/lang/Object;

    .line 3587
    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3588
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3600
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableSubtitle(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 2408
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v1

    .line 2409
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x0

    .line 2411
    :try_start_0
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v3, :cond_0

    goto :goto_1

    .line 2416
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v4, "true"

    goto :goto_0

    :cond_1
    const-string v4, "false"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2419
    :cond_2
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v3, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableSubtitle(Z)I

    move-result v1

    goto :goto_2

    :cond_3
    :goto_1
    const-string v3, "Fail to load JNI library"

    new-array v4, v2, [Ljava/lang/Object;

    .line 2412
    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2413
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2426
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v3

    .line 2421
    :try_start_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "_> nativeEnableSubtitle: native method is not found!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    .line 2422
    invoke-static {v0, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2426
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2429
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_> nativeEnableSubtitle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2431
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 2430
    invoke-static {v0, p1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2434
    :cond_5
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1

    .line 2426
    :goto_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableSubtitleAutoAdjustment(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 3381
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3382
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 3384
    :try_start_0
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 3389
    :cond_0
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v3, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableSubtitleAutoAdjustment(Z)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "Fail to load JNI library"

    new-array v3, v2, [Ljava/lang/Object;

    .line 3385
    invoke-static {v0, p1, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3386
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3397
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3391
    :try_start_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nativeEnableSubtitleAutoAdjustment: Native method not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3397
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3399
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1

    .line 3397
    :goto_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableSwitchAudioGroup(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .line 1708
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1710
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 1715
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, "true"

    goto :goto_0

    :cond_1
    const-string v2, "false"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 1719
    :cond_3
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const-wide/16 v2, 0x74

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v3, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result p1

    .line 1720
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1722
    :goto_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_4
    :goto_2
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1711
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1712
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1722
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableTunneling(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1459
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1461
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1462
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1463
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1467
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1465
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enableTunneling(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1467
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableVOAdaptivePlayback(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1816
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1818
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1819
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1820
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1824
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1822
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enableVOAdaptivePlayback(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1824
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enableVideoStream(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1427
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1429
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeEnableVideoStream(Z)I

    move-result p1

    .line 1435
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1430
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1431
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1437
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public enforceSoftwareVideoScaling(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3404
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3406
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-nez v0, :cond_0

    :try_start_1
    const-string p1, "The player is destroyed."

    new-array v0, v1, [Ljava/lang/Object;

    .line 3407
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3408
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3414
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_0
    :try_start_2
    const-string v0, "enforceSoftwareVideoScaling"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3410
    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3411
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    .line 3412
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enforceSoftwareVideoScaling(Z)I

    move-result p1

    .line 3411
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3414
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getAnalytics(Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;)Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsInfo;
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetAnalytics(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 234
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;-><init>()V

    .line 235
    check-cast p1, Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAnalyticsInfoImpl;->parse(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :goto_0
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 229
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 238
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getAnalyticsExportPacket()Ljava/lang/String;
    .locals 4

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 3315
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "getAnalyticsExportPacket"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 3317
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3318
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 3322
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetAnalyticsExportPacket()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3324
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v1, "Fail to load JNI library"

    new-array v2, v2, [Ljava/lang/Object;

    .line 3319
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3324
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getAnalyticsFPS()F
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetAnalyticsFPS()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Fail to load JNI library"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 197
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v0, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 203
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getAnalyticsVoExportPacket()Ljava/lang/String;
    .locals 4

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 3330
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "getAnalyticsExportPacket"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 3332
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3333
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 3337
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetAnalyticsVoExportPacket()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3339
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v1, "Fail to load JNI library"

    new-array v2, v2, [Ljava/lang/Object;

    .line 3334
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3339
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getAudioCount()I
    .locals 3

    .line 2111
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2116
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetAudioCount()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    .line 2112
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2113
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    return v0
.end method

.method public getAudioDecodingBitrate()[I
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "The player is destroyed."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 261
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v2, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 264
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->getAudioDecodingBitrate()[I

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 266
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getAudioProperty(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetProperty;
    .locals 2

    .line 2271
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2275
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetAudioProperty(I)Ljava/lang/Object;

    move-result-object p1

    .line 2276
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;-><init>()V

    .line 2277
    check-cast p1, Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->parse(Landroid/os/Parcel;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Fail to load JNI library"

    .line 2272
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentSelection()Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetIndex;
    .locals 3

    .line 2307
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2311
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetCurrentSelection()Ljava/lang/Object;

    move-result-object v0

    .line 2312
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;

    invoke-direct {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;-><init>()V

    .line 2313
    check-cast v0, Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->parse(Landroid/os/Parcel;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    .line 2308
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDRMUniqueIdentifier()Ljava/lang/String;
    .locals 2

    .line 439
    new-instance v0, Lcom/visualon/OSMPUtils/voOSUniqID;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->context_:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/visualon/OSMPUtils/voOSUniqID;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSUniqID;->getDrmUUIDString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 2

    .line 2911
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2913
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2915
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getDownloadStatus(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;
    .locals 4

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 3030
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "getDownloadStatus"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 3032
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3033
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 3037
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SOURCE_STREAMTYPE;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetDownloadStatus(I)I

    move-result p1

    .line 3038
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3040
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "Fail to load JNI library"

    new-array v1, v2, [Ljava/lang/Object;

    .line 3034
    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3035
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;->VO_OSMP_DOWNLOAD_STALL:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOAD_STATUS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3040
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getDuration()J
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetDuration()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    .line 412
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFrameScrubbingThumbnail(I)Ljava/lang/String;
    .locals 5

    .line 3278
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3280
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-nez v0, :cond_0

    :try_start_1
    const-string p1, "The player is destroyed."

    new-array v0, v1, [Ljava/lang/Object;

    .line 3281
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3289
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 3284
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "timeStamp: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 3285
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3287
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->getFrameScrubbingThumbnail(I)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3289
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getLicenseLeftDays()I
    .locals 7

    const/4 v0, -0x1

    .line 3895
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "@@@VOCommonPlayerImpl"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    :try_start_1
    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x72

    .line 3901
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getParameter(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3903
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 3904
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> getParameter(CHECK_LICENSE_DISPLAY), ret= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "getParameter return null pointer"

    new-array v2, v3, [Ljava/lang/Object;

    .line 3906
    invoke-static {v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_2
    :goto_1
    const-string v1, "Fail to load JNI library"

    new-array v3, v3, [Ljava/lang/Object;

    .line 3896
    invoke-static {v2, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 3911
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getMaxCPUFrequency()J
    .locals 4

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 2875
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "getMaxCPUFrequency"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 2877
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2878
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 2883
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetMaxCPUFrequency()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2885
    :goto_0
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v1, "Fail to load JNI library"

    new-array v2, v2, [Ljava/lang/Object;

    .line 2879
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2880
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v0, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2885
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getMaxPosition()J
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetMaxPosition()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    .line 381
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMinPosition()J
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetMinPosition()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    .line 370
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNumberOfCores()I
    .locals 4

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 2844
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "getNumberOfCores"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 2846
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2847
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 2852
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetNumberOfCores()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2854
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v1, "Fail to load JNI library"

    new-array v2, v2, [Ljava/lang/Object;

    .line 2848
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2849
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2854
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getOSType()Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;
    .locals 2

    .line 2891
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2893
    :try_start_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;->VO_OSMP_DEVICE_INFO_OS_ANDROID:Lcom/visualon/OSMPPlayer/VOCommonPlayerDeviceInfo$VO_OSMP_DEVICE_INFO_OS_TYPE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2895
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 2

    .line 2901
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2903
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2905
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getPTSPosition()J
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetPTSPosition()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    .line 402
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "The player is destroyed."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 504
    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 507
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->getParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 509
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getParameter(I)Ljava/lang/Object;
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 518
    invoke-static {p1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 521
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->getParameter2(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getPlayerState()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetPlayerState()I

    move-result v0

    .line 335
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    .line 330
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;->VO_OSMP_STATE_UNINITIALIZED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    return-object v0
.end method

.method public getPlayerStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetPlayerStatus()I

    move-result v0

    .line 324
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    .line 319
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_INITIALIZING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    return-object v0
.end method

.method public getPlayerType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOCommonPlayerImpl"

    const-string v3, "The player is destroyed."

    .line 307
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 310
    :cond_0
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->getPlayerType()I

    move-result v0

    const/4 v2, -0x1

    if-ne v2, v0, :cond_1

    return-object v1

    .line 313
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;

    move-result-object v0

    return-object v0
.end method

.method public getPlayingAsset()Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetIndex;
    .locals 3

    .line 2295
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2299
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetPlayingAsset()Ljava/lang/Object;

    move-result-object v0

    .line 2300
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;

    invoke-direct {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;-><init>()V

    .line 2301
    check-cast v0, Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;->parse(Landroid/os/Parcel;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    .line 2296
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()J
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetPosition()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    .line 359
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getProcessorType()Ljava/lang/String;
    .locals 3

    .line 3015
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3017
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "The player is destroyed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 3018
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3023
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 3021
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->getProcessorType()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3023
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getRTSPStatistics()Lcom/visualon/OSMPPlayer/VOOSMPRTSPStatistics;
    .locals 3

    .line 1930
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1932
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1936
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetRTSPStatistics()Ljava/lang/Object;

    move-result-object v0

    .line 1937
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;

    invoke-direct {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;-><init>()V

    .line 1938
    check-cast v0, Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;->parse(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1941
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Fail to load JNI library"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1933
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 1941
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getSEIInfo(JLcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SEI_INFO_FLAG;)Lcom/visualon/OSMPPlayer/VOOSMPSEIPicTiming;
    .locals 2

    const/4 v0, 0x0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SEI_INFO_FLAG;->getValue()I

    move-result p3

    invoke-virtual {v1, p1, p2, p3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetSEIInfo(JI)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 471
    :cond_1
    new-instance p2, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;

    invoke-direct {p2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;-><init>()V

    .line 472
    check-cast p1, Landroid/os/Parcel;

    invoke-virtual {p2, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->parse(Landroid/os/Parcel;)V

    return-object p2

    :cond_2
    :goto_0
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "Fail to load JNI library"

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    .line 464
    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 475
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getScreenBrightness()I
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOCommonPlayerImpl"

    const-string v3, "The player is destroyed."

    .line 431
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 434
    :cond_0
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->getScreenBrightness()I

    move-result v0

    return v0
.end method

.method public getScreenBrightnessMode()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "The player is destroyed."

    .line 422
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;->VO_OSMP_SCREEN_BRIGHTNESS_MODE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;

    return-object v0

    .line 425
    :cond_0
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->getScreenBrightnessMode()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleCount()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOCommonPlayerImpl"

    const-string v3, "getSubtitleCount"

    .line 2121
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2122
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2127
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetSubtitleCount()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Fail to load JNI library"

    .line 2123
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2124
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    return v0
.end method

.method public getSubtitleProperty(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetProperty;
    .locals 2

    .line 2283
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2287
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetSubtitleProperty(I)Ljava/lang/Object;

    move-result-object p1

    .line 2288
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;-><init>()V

    .line 2289
    check-cast p1, Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->parse(Landroid/os/Parcel;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Fail to load JNI library"

    .line 2284
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getThumbnailType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;
    .locals 4

    .line 3776
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3777
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->VO_OSMP_THUMBNAILS_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    .line 3779
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 3784
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativegetThumbnaiType()I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3787
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 3780
    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3787
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getUTCPosition()J
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetUTCPosition()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    .line 392
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getValidBufferDuration()I
    .locals 4

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 3046
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "getValidBufferDuration"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 3048
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3049
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 3054
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetValidBufferDuration()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3056
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v1, "Fail to load JNI library"

    new-array v2, v2, [Ljava/lang/Object;

    .line 3050
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3051
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3056
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getVersion(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_MODULE_TYPE;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_MODULE_TYPE;->getValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetVersion(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v1, "Fail to load JNI library"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 446
    invoke-static {p1, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 455
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getVideoAdClickThru()Ljava/lang/String;
    .locals 3

    .line 2949
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "getVideoAdClickThru"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 2951
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2954
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getVideoCount()I
    .locals 3

    .line 2101
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2106
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetVideoCount()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    .line 2102
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2103
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    return v0
.end method

.method public getVideoDecodingBitrate()[I
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "The player is destroyed."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 247
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v2, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 250
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->getVideoDecodingBitrate()[I

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 252
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getVideoProperty(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetProperty;
    .locals 2

    .line 2259
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2263
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeGetVideoProperty(I)Ljava/lang/Object;

    move-result-object p1

    .line 2264
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;-><init>()V

    .line 2265
    check-cast p1, Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->parse(Landroid/os/Parcel;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Fail to load JNI library"

    .line 2260
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasNeon()Z
    .locals 4

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 2860
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "hasNeon"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 2862
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2863
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2867
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeHasNeon()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2869
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_1
    :goto_0
    :try_start_1
    const-string v1, "Fail to load JNI library"

    new-array v3, v2, [Ljava/lang/Object;

    .line 2864
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2869
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public init(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;Lcom/visualon/OSMPPlayer/VOOSMPInitParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "The player is destroyed."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 533
    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 538
    :try_start_1
    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->getLibraryPath()Ljava/lang/String;

    move-result-object v0

    .line 540
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPUtils/voLog;->initLogLib(Ljava/lang/String;)I

    .line 541
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->loadJNI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 542
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->context_:Landroid/content/Context;

    .line 548
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->init(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;Lcom/visualon/OSMPPlayer/VOOSMPInitParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 550
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public isAudioAvailable(I)Z
    .locals 3

    .line 2207
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2211
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeIsAudioAvailable(I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    .line 2208
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public isLiveStreaming()Z
    .locals 4

    .line 349
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeIsLiveStreaming()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOCommonPlayerImpl"

    const-string v3, "Fail to load JNI library"

    .line 350
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public isOutputControlActive(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;)Z
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeIsOutputControlActive(I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    .line 483
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public isOutputControlEnforce(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;)Z
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeIsOutputControlEnforce(I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    .line 492
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public isSubtitleAvailable(I)Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOCommonPlayerImpl"

    const-string v3, "isSubtitleAvailable"

    .line 2216
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2217
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2221
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeIsSubtitleAvailable(I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "Fail to load JNI library"

    .line 2218
    invoke-static {v2, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public isThumbnailAvailable()Z
    .locals 4

    .line 3760
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3762
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3767
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeIsThumbnailAvailable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3770
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Fail to load JNI library"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 3763
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3770
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isVideoAvailable(I)Z
    .locals 3

    .line 2198
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2202
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeIsVideoAvailable(I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    .line 2199
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public limitBAbyViewSize(Landroid/view/View;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 3874
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->limitBAbyViewSize(Landroid/view/View;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public loadAdCall(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 2921
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2923
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2924
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2925
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2929
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 2927
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->loadAdCall(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2929
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public loadVideo(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 153
    :try_start_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    .line 154
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public loadVideoById(Ljava/lang/String;Ljava/lang/String;IILcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 2962
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "loadVideoById"

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    .line 2964
    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2965
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    .line 2966
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2968
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public loadVideoByUrl(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 2935
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2937
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2938
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2939
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2943
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 2941
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->loadVideoByUrl(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2943
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public mute()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 831
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 833
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeMute()I

    move-result v0

    .line 839
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Fail to load JNI library"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 834
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 841
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onVOEventInternal(IJJLjava/lang/Object;)V
    .locals 7

    .line 3419
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@VOCommonPlayerImpl"

    const-string p3, "The player is destroyed."

    .line 3420
    invoke-static {p2, p3, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 3423
    invoke-virtual/range {v0 .. v6}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->onVOEventInternal(IJJLjava/lang/Object;)V

    return-void
.end method

.method public open(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 7

    .line 617
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "The player is destroyed."

    new-array p3, v1, [Ljava/lang/Object;

    .line 620
    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 623
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "url: %s, flag: %d, type: %d, openParam: getDecoderType: %d - getDuration: %d - getFileSize: %d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 v3, 0x1

    .line 626
    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    if-nez p4, :cond_1

    goto :goto_1

    .line 627
    :cond_1
    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->getDecoderType()I

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x4

    const-wide/16 v3, 0x0

    if-nez p4, :cond_2

    move-wide v5, v3

    goto :goto_2

    .line 628
    :cond_2
    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->getDuration()J

    move-result-wide v5

    :goto_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v1

    const/4 v1, 0x5

    if-nez p4, :cond_3

    goto :goto_3

    .line 629
    :cond_3
    invoke-virtual {p4}, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->getFileSize()J

    move-result-wide v3

    :goto_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    .line 624
    invoke-static {v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->open(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FORMAT;Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 637
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public openSource(JLcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 3209
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3211
    :try_start_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "source: 0x%X flag: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 3212
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-virtual {p3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3214
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 3219
    :cond_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;->VO_OSMP_FLAG_SRC_PUSH_BUFFER_FUNCTION:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;

    if-ne p3, v0, :cond_2

    .line 3220
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SRC_FLAG;->getValue()I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeOpenSource(JI)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3223
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 3221
    :cond_2
    :try_start_1
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    :cond_3
    :goto_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "Fail to load JNI library"

    new-array p3, v1, [Ljava/lang/Object;

    .line 3215
    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3216
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3223
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public pause()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    .line 722
    invoke-static {v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->sp_Pause()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method

.method public preloadSource()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ""

    new-array v1, v1, [Ljava/lang/Object;

    .line 692
    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 694
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativePreloadSource()I

    move-result v0

    .line 695
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 688
    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 697
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public prepare(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 643
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 645
    :try_start_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "url: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 646
    invoke-static {v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->prepare(Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 649
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-eq v0, v2, :cond_1

    const-string p1, "Currently not support this DRM type"

    new-array p2, v1, [Ljava/lang/Object;

    .line 650
    invoke-static {p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 653
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativePrepare(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public previewSubtitle(Ljava/lang/String;Landroid/view/View;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 2806
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 2808
    :try_start_0
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 2813
    :cond_0
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v3, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativePreviewSubtitle(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "Fail to load JNI library"

    new-array p2, v2, [Ljava/lang/Object;

    .line 2809
    invoke-static {v0, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2810
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2815
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "_>nativePreviewSubtitley: native method is not defined!"

    .line 2816
    invoke-static {v0, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2822
    :cond_2
    :goto_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2823
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "_> nativePreviewSubtitle, RETURN: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2826
    :cond_3
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public redrawVideo()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 927
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0
.end method

.method public requestThumbnails(JJLcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;J)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 10

    move-object v1, p0

    .line 3793
    iget-object v0, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3795
    :try_start_0
    iget-object v0, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3800
    :cond_0
    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 3801
    invoke-virtual {p5}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;->getValue()I

    move-result v7

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeRequestThumbnails(JJIJ)I

    move-result v0

    .line 3800
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3804
    :goto_0
    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 3796
    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3797
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3804
    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public resetSubtitleParameter()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 2777
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 2779
    :try_start_0
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 2784
    :cond_0
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeResetSubtitleParameter()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "Fail to load JNI library"

    new-array v4, v2, [Ljava/lang/Object;

    .line 2780
    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2781
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    .line 2786
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2787
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_>nativeResetSubtitleParameter: Native method not found!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2792
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v3, :cond_3

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "The player is destroyed."

    .line 2793
    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2794
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0

    .line 2796
    :cond_3
    invoke-virtual {v3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->resetSubtitleParameter()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 2798
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2799
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_>nativeResetSubtitleParameter, RETURN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2801
    :cond_4
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method

.method public resume(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;J)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 2999
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3001
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-nez v0, :cond_0

    :try_start_1
    const-string p1, "The player is destroyed."

    new-array p2, v1, [Ljava/lang/Object;

    .line 3002
    invoke-static {v2, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3003
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3009
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_0
    :try_start_2
    const-string v0, "resume"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3005
    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3006
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->resume(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_RESUME_MODE;J)I

    move-result p1

    .line 3007
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3009
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public resume(Ljava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 886
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 889
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->resume(Ljava/lang/Object;)I

    move-result p1

    .line 890
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 892
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public selectAudio(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 2160
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2162
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2167
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2170
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSelectAudio(I)I

    move-result p1

    .line 2171
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2173
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 2163
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2164
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2173
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public selectMultiTracks([II)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 2132
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 2136
    :cond_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    .line 2133
    invoke-static {p2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2134
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public selectSubtitle(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 2179
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2181
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2186
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2189
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSelectSubtitle(I)I

    move-result p1

    .line 2190
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2192
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 2182
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2183
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2192
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public selectVideo(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 2141
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2143
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2148
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2151
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSelectVideo(I)I

    move-result p1

    .line 2152
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2154
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 2144
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2145
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2154
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setADSkipAction()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setAdTrackingAPI(Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 2974
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "setAdTrackingAPI"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2976
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2977
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    .line 2978
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2980
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setAdaptationByVideoCodecType(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 3918
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "setAdaptationByVideoCodecType"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 3920
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3921
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 3926
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetAdaptationByVideoCodecType(Ljava/lang/String;)I

    move-result p1

    .line 3927
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3929
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "Fail to load JNI library"

    new-array v1, v2, [Ljava/lang/Object;

    .line 3922
    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3923
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3929
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setAnalyticsAgentAppID(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3726
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3728
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3733
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3736
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 3737
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetAnalyticsAgentAppID(Ljava/lang/String;)I

    move-result p1

    .line 3736
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3739
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3729
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3730
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3739
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setAnalyticsAgentCUID(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3529
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3531
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3535
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cuid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3538
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 3539
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetAnalyticsAgentCUID(Ljava/lang/String;)I

    move-result p1

    .line 3538
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3541
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3532
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3533
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3541
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setAnalyticsDisplayType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DISPLAY_TYPE;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetAnalyticsDisplayType(I)I

    move-result p1

    .line 143
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 138
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 145
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setAnalyticsExportListener(Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3346
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3348
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-nez v0, :cond_0

    :try_start_1
    const-string p1, "The player is destroyed."

    new-array v0, v1, [Ljava/lang/Object;

    .line 3349
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3350
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3357
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_0
    :try_start_2
    const-string v0, "setAnalyticsExportListener"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3352
    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "VOAnalyticsExportListener"

    .line 3353
    invoke-direct {p0, p1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getObjConfig(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

    .line 3354
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    .line 3355
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setAnalyticsExportListener(Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;)I

    move-result p1

    .line 3354
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3357
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setAnalyticsFoundationCUID(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3098
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3100
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3105
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cuid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3108
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 3109
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetAnalyticsFoundationCUID(Ljava/lang/String;)I

    move-result p1

    .line 3108
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3111
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3101
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3102
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3111
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setAnalyticsVoExportListener(Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3364
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3366
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-nez v0, :cond_0

    :try_start_1
    const-string p1, "The player is destroyed."

    new-array v0, v1, [Ljava/lang/Object;

    .line 3367
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3368
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3375
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_0
    :try_start_2
    const-string v0, "setAnalyticsExportListener"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3370
    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "VOAnalyticsExportListener"

    .line 3371
    invoke-direct {p0, p1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getObjConfig(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;

    .line 3372
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    .line 3373
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setAnalyticsVoExportListener(Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;)I

    move-result p1

    .line 3372
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3375
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setAnewBufferingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 1406
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setPlaybackBufferingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setAudioDolbyFeatures(Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1484
    iget-object v0, p1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->endPoint:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyEndPoint;->getValue()I

    move-result v0

    .line 1485
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x10c

    invoke-virtual {p0, v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1487
    iget-boolean v0, p1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->postprocessing:Z

    const/16 v1, 0x10d

    .line 1488
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1490
    iget v0, p1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->dialogueEnhancementLevel:I

    const/16 v1, 0x10e

    .line 1491
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1493
    iget-boolean v0, p1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->dualDecodingAndMixing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x10f

    .line 1494
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1496
    iget v0, p1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->mixingBalance:I

    const/16 v1, 0x112

    .line 1497
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1499
    iget-object v0, p1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->inputMode:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyInputMode;->getValue()I

    move-result v0

    const/16 v1, 0x110

    .line 1500
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1502
    iget-object v0, p1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->program:Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures$VOOSMPDolbyProgram;->getValue()I

    move-result v0

    const/16 v1, 0x111

    .line 1503
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1505
    iget-boolean p1, p1, Lcom/visualon/OSMPPlayer/VOOSMPAudioDolbyFeatures;->enableJOC:Z

    const/16 v0, 0x113

    .line 1506
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1508
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setAudioEffectEndpointType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AUDIO_EFFECT_ENDPOINT_TYPE;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetAudioEffectEndpointType(I)I

    move-result p1

    .line 186
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 181
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 188
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setAudioPlaybackSpeed(F)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1545
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1547
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1552
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1555
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetAudioPlaybackSpeed(F)I

    move-result p1

    .line 1556
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1558
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1548
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1549
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1558
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setAudioRenderExportListener(Lcom/visualon/OSMPPlayer/VOOSMPAudioRenderListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-nez v0, :cond_0

    :try_start_1
    const-string p1, "The player is destroyed."

    new-array v0, v1, [Ljava/lang/Object;

    .line 294
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 297
    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioRenderExportListener: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setAudioRenderListener(Lcom/visualon/OSMPPlayer/VOOSMPAudioRenderListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 300
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setBAResolutionThreshold(IIII)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1747
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1749
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1754
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widthLower "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", widthUpper "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", heightLower "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", heightUpper "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1757
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetBAResolutionThreshold(IIII)I

    move-result p1

    .line 1758
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1760
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "Fail to load JNI library"

    new-array p3, v1, [Ljava/lang/Object;

    .line 1750
    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1751
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1760
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setBitrateThreshold(II)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1728
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1730
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1735
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upper "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lower "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1738
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetBitrateThreshold(II)I

    move-result p1

    .line 1739
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1741
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 1731
    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1732
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1741
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setColorType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1109
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1111
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1112
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1113
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1115
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_COLORTYPE;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setColorType(I)I

    move-result p1

    .line 1116
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1118
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setDRMAdapter(Ljava/lang/Object;Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 1282
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1284
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "The player is destroyed."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1285
    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1286
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1291
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1288
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setDRMAdapter(Ljava/lang/Object;Z)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1291
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setDRMFilePath(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 3062
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "setDRMFilePath"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 3064
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3065
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 3070
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 3071
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetDRMFilePath(Ljava/lang/String;)I

    move-result p1

    .line 3070
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3073
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "Fail to load JNI library"

    new-array v1, v2, [Ljava/lang/Object;

    .line 3066
    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3067
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3073
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setDRMInitData(Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1314
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1316
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1317
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1318
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1321
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setDRMInitData(Lcom/visualon/OSMPPlayer/VOOSMPDRMInit;)I

    move-result p1

    .line 1320
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1323
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setDRMLibrary(Ljava/lang/String;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .line 1242
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1244
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "@@@VOCommonPlayerImpl"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_1

    const-string p1, "The player is destroyed."

    new-array p2, v2, [Ljava/lang/Object;

    .line 1249
    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1250
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1275
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    const/16 v0, 0x9c

    .line 1254
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->getParameter(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 1256
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string v3, "Water mark support status is %s"

    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    const-string v5, "on"

    goto :goto_2

    :cond_3
    const-string v5, "off"

    :goto_2
    aput-object v5, v4, v2

    .line 1258
    invoke-static {v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    const-string v0, "getParameter return null pointer"

    new-array v3, v2, [Ljava/lang/Object;

    .line 1260
    invoke-static {v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1264
    :goto_3
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v3, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetDRMLibrary(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p2, :cond_5

    const-string v3, "voGetVerimatrixDRMAPI"

    .line 1265
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    .line 1266
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {p2, v1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enableVerimatrixPostProcessVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_4

    .line 1268
    :cond_5
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {p2, v2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->enableVerimatrixPostProcessVideo(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1271
    :goto_4
    new-instance p2, Lcom/visualon/OSMPUtils/voOSUniqID;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->context_:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/visualon/OSMPUtils/voOSUniqID;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/visualon/OSMPUtils/voOSUniqID;->getDrmUUIDString()Ljava/lang/String;

    move-result-object p2

    .line 1272
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetDRMUniqueIdentifier(Ljava/lang/String;)I

    .line 1273
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    goto :goto_0

    :cond_6
    :goto_5
    const-string p1, "Fail to load JNI library"

    new-array p2, v2, [Ljava/lang/Object;

    .line 1245
    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1246
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1275
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setDRMUniqueIdentifier(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 1329
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1331
    :try_start_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setDRMVerificationInfo(Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1298
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1300
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 1306
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetDRMVerificationInfo(Ljava/lang/Object;)I

    move-result p1

    .line 1305
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1301
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1302
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1308
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setDefaultAudioLanguage(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 2319
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2321
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    new-array v1, v1, [Ljava/lang/Object;

    .line 2322
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2323
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2331
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 2325
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2328
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setDefaultAudioLanguage(Ljava/lang/String;)I

    move-result p1

    .line 2329
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2331
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setDefaultSubtitleLanguage(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 2337
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2339
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    new-array v1, v1, [Ljava/lang/Object;

    .line 2340
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2341
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2349
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 2343
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2346
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setDefaultSubtitleLanguage(Ljava/lang/String;)I

    move-result p1

    .line 2347
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2349
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setDeviceCapabilityByFile(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 1171
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "VOCommonPlayerImpl setDeviceCapabilityByFile "

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 1173
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1174
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 1180
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_ARGUMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1181
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetDeviceCapabilityByFile(Ljava/lang/String;)I

    move-result p1

    .line 1182
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, "Fail to load JNI library"

    new-array v1, v2, [Ljava/lang/Object;

    .line 1175
    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1176
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1184
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setHDCPPolicy(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 3236
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3238
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3243
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HDCP_POLICY;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetHDCPPolicy(I)I

    move-result p1

    .line 3244
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3247
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3239
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3240
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3247
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setHTTPHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 2030
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "setHTTPHeader"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 2032
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2033
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 2038
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetHTTPHeader(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2039
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2041
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "Fail to load JNI library"

    new-array p2, v2, [Ljava/lang/Object;

    .line 2034
    invoke-static {v0, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2035
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2041
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setHTTPProxy(Lcom/visualon/OSMPPlayer/VOOSMPHTTPProxy;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 2047
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "setHTTPProxy"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 2049
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2050
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 2055
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetHTTPProxy(Ljava/lang/Object;)I

    move-result p1

    .line 2056
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2058
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "Fail to load JNI library"

    new-array v1, v2, [Ljava/lang/Object;

    .line 2051
    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2052
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2058
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setHTTPRetryTimeout(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 2064
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "setHTTPRetryTimeout"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 2066
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2067
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 2072
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetHTTPRetryTimeout(I)I

    move-result p1

    .line 2073
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2075
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "Fail to load JNI library"

    new-array v1, v2, [Ljava/lang/Object;

    .line 2068
    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2069
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2075
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setHTTPVerificationInfo(Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 2012
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    const-string v1, "setHTTPVerificationInfo"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 2014
    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2015
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 2020
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetHTTPVerificationInfo(Ljava/lang/Object;)I

    move-result p1

    .line 2021
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2023
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "Fail to load JNI library"

    new-array v1, v2, [Ljava/lang/Object;

    .line 2016
    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2017
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2023
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setHWDecoderMaxResolution(II)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 3430
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3432
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3448
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 3449
    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetHWDecoderMaxResolution(II)I

    move-result p1

    .line 3448
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3451
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "Fail to load JNI library"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 3433
    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3434
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3451
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setInitialBitrate(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .line 1190
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1197
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bitrate: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1200
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetInitialBitrate(I)I

    move-result p1

    .line 1201
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1193
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1194
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1203
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setInitialBufferTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 1339
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setInitialBufferingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setInitialBufferingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1344
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1346
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1351
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1354
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetInitialBufferingTime(I)I

    move-result p1

    .line 1355
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1347
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1348
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1357
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setLicenseContent([B)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1061
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1063
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetLicenseContent([B)I

    move-result p1

    .line 1069
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1064
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1065
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1071
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setLicenseFilePath(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1079
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetLicenseFilePath(Ljava/lang/String;)I

    move-result p1

    .line 1085
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1080
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1081
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1087
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setLowLatencyBufferingThreshold(II)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1583
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1585
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1590
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lower: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", upper: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1593
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetLowLatencyBufferingThreshold(II)I

    move-result p1

    .line 1594
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1596
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 1586
    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1587
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1596
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setMaxBufferTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 1363
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setMaxBufferingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setMaxBufferingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1368
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1370
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1375
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1378
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetMaxBufferingTime(I)I

    move-result p1

    .line 1379
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1381
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1371
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1372
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1381
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setNightVisionLevel([F)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3648
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3650
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "@@@VOCommonPlayerImpl"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3654
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_1

    const-string p1, "The player is destroyed."

    new-array v0, v2, [Ljava/lang/Object;

    .line 3655
    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3656
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3664
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 3659
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enhancement level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3662
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setLowBacklightEnhanceLevel([F)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    const-string p1, "Fail to load JNI library"

    new-array v0, v2, [Ljava/lang/Object;

    .line 3651
    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3652
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3664
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setOnEventListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 933
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 935
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 936
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 937
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 939
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setOnEventListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 941
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setPDConnectionRetryCount(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1654
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1656
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetPDConnectionRetryCount(I)I

    move-result p1

    .line 1662
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1664
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1657
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1658
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1664
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 1830
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1832
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "The player is destroyed."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1833
    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1834
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1838
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1836
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1838
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setPlayIFrameFPS(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3476
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3478
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-gez p1, :cond_1

    .line 3484
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_ARGUMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3491
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 3486
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set IFrame FPS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3489
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetPlayIFrameFPS(I)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3479
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3480
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3491
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setPlayIFrameOnly(ZF)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3457
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3459
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 3464
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, "true"

    goto :goto_0

    :cond_1
    const-string v2, "false"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " speed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3467
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetPlayIFrameOnly(ZF)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3470
    :goto_1
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_3
    :goto_2
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 3460
    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3461
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 3470
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setPlaybackBufferingTime(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1387
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1389
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1394
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1397
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetPlaybackBufferingTime(I)I

    move-result p1

    .line 1398
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1390
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1391
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1400
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setPlayerConfig(Lcom/visualon/OSMPPlayer/VOPlayerConfig;)V
    .locals 1

    .line 1473
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1475
    :try_start_0
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mConfig:Lcom/visualon/OSMPPlayer/VOPlayerConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1477
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setPosition(J)J
    .locals 4

    .line 776
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 778
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 783
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "msec: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 784
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetPosition(J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 779
    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long p1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 790
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setPreAgreedLicense(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1093
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1095
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetPreAgreedLicense(Ljava/lang/String;)I

    move-result p1

    .line 1101
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1096
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1103
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setPreference(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3253
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3255
    :try_start_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preference "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3258
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 3262
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PREFERENCE;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetPreference(I)I

    move-result p1

    .line 3263
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3266
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3259
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3260
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3266
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setPreferredAudioLanguage([Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 2355
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2357
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-nez v0, :cond_0

    :try_start_1
    const-string p1, "The player is destroyed."

    new-array v0, v1, [Ljava/lang/Object;

    .line 2358
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2359
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2365
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_0
    :try_start_2
    const-string v0, "setPreferredAudioLanguage"

    new-array v1, v1, [Ljava/lang/Object;

    .line 2361
    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2362
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setPreferredAudioLanguage([Ljava/lang/String;)I

    move-result p1

    .line 2363
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2365
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setPreferredSubtitleLanguage([Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 2372
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2374
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-nez v0, :cond_0

    :try_start_1
    const-string p1, "The player is destroyed."

    new-array v0, v1, [Ljava/lang/Object;

    .line 2375
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2376
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2382
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_0
    :try_start_2
    const-string v0, "setPreferredSubtitleLanguage"

    new-array v1, v1, [Ljava/lang/Object;

    .line 2378
    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2379
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setPreferredSubtitleLanguage([Ljava/lang/String;)I

    move-result p1

    .line 2380
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2382
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setPresentationDelay(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1602
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1604
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1609
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1612
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetPresentationDelay(I)I

    move-result p1

    .line 1613
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1615
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1605
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1606
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1615
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setRTSPConnectionPort(Lcom/visualon/OSMPPlayer/VOOSMPRTSPPort;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1914
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1916
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1921
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetRTSPConnectionPort(Ljava/lang/Object;)I

    move-result p1

    .line 1922
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1924
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1917
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1918
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1924
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setRTSPConnectionTimeout(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1995
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1997
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2002
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetRTSPConnectionTimeout(I)I

    move-result p1

    .line 2003
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2005
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1998
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1999
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2005
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setRTSPConnectionType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1898
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1900
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1905
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RTSP_CONNECTION_TYPE;->getValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetRTSPConnectionType(I)I

    move-result p1

    .line 1906
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1908
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1901
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1902
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1908
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setRTSPMaxSocketErrorCount(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1979
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1981
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetRTSPMaxSocketErrorCount(I)I

    move-result p1

    .line 1987
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1989
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1982
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1983
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1989
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setRTSPOverHTTPConnectionPort(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1963
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1965
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1970
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetRTSPOverHTTPConnectionPort(I)I

    move-result p1

    .line 1971
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1973
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1966
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1967
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1973
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setRenderType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1124
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1126
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1127
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1128
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1130
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setRenderType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1132
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setScreenBrightness(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 963
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 965
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 966
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 970
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setScreenBrightness(I)I

    move-result p1

    .line 969
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 972
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setScreenBrightnessMode(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 948
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 950
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 951
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 952
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 955
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setScreenBrightnessMode(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_SCREEN_BRIGHTNESS_MODE;)I

    move-result p1

    .line 954
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 957
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSegmentDownloadRetryCount(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 1766
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1768
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1773
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSegmentDownloadRetryCount(I)I

    move-result p1

    .line 1774
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1776
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1769
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1770
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1776
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSegmentStartParam(Ljava/util/HashMap;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public setSmoothBAWhiteListFile(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 165
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 168
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setSmoothBAWhiteListFile(Ljava/lang/String;)I

    move-result p1

    .line 169
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 171
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSphericalVideoView(FFF)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 3689
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@VOCommonPlayerImpl"

    const-string p3, "The player is destroyed."

    .line 3690
    invoke-static {p2, p3, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3691
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 3693
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setSphericalVideoView(FFF)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setSphericalVideoView(Lcom/visualon/OSMPPlayer/VOOSMPSphericalVideoView;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .line 3698
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "The player is destroyed."

    .line 3699
    invoke-static {v2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3700
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 3702
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VOOSMPSphericalVideoView is: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3705
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setSphericalVideoView(Lcom/visualon/OSMPPlayer/VOOSMPSphericalVideoView;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setSubtitleBoundingBox(IIII)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 3133
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3134
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 3136
    :try_start_0
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 3141
    :cond_0
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSubtitleBoundingBox(IIII)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "Fail to load JNI library"

    new-array v4, v2, [Ljava/lang/Object;

    .line 3137
    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3138
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3150
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v3

    .line 3144
    :try_start_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "nativeSetSubtitleBoundingBox: Native method is not found!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    .line 3145
    invoke-static {v0, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3150
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3152
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nativeSetSubtitleBoundingBox: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3155
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 3153
    invoke-static {v0, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3157
    :cond_3
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1

    .line 3150
    :goto_2
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleFontBackgroundColor(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 2545
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2547
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2552
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSubtitleFontBackgroundColor(I)I

    move-result v0

    .line 2553
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_> nativeSetSubtitleFontBackgroundColor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2557
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2559
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 2548
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2549
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2559
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleFontBackgroundOpacity(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .line 2565
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2567
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2572
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSubtitleFontBackgroundOpacity(I)I

    move-result v0

    .line 2573
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_> nativeSetSubtitleFontBackgroundOpacity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", RETURN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, p1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2577
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2579
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 2568
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2569
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2579
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleFontBold(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 2645
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2647
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2652
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeStSubtitleFontBold(Z)I

    move-result v0

    .line 2653
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_> nativeStSubtitleFontBold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2657
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2659
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 2648
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2649
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2659
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleFontColor(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 2464
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2466
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2471
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSubtitleFontColor(I)I

    move-result v0

    .line 2472
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_> nativeSetSubtitleFontColor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2477
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2479
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 2467
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2468
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2479
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleFontEdgeColor(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 2724
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2726
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2731
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSubtitleFontEdgeColor(I)I

    move-result v0

    .line 2732
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_>nativeSetSubtitleFontEdgeColor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2736
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2738
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 2727
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2728
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2738
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleFontEdgeOpacity(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 2744
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2746
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2751
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSubtitleFontEdgeOpacity(I)I

    move-result v0

    .line 2752
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2753
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_>nativeSetSubtitleFontEdgeOpacity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2756
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2758
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 2747
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2748
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2758
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleFontEdgeType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 2705
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2707
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2712
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSubtitleFontEdgeType(I)I

    move-result v0

    .line 2713
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_> nativeSetSubtitleFontEdgeType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2716
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2718
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 2708
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2709
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2718
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleFontItalic(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 2625
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2627
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2632
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSubtitleFontItalic(Z)I

    move-result v0

    .line 2633
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_> nativeSetSubtitleFontItalic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2637
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2639
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 2628
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2629
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2639
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleFontName(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 2685
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2687
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2692
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSubtitleFontName(Ljava/lang/String;)I

    move-result v0

    .line 2693
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_> nativeSetSubtitleFontName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2697
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2699
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 2688
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2689
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2699
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleFontOpacity(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 2485
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2487
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2492
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSubtitleFontOpacity(I)I

    move-result v0

    .line 2493
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_> nativeSetSubtitleFontOpacity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2497
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2499
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 2488
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2489
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2499
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleFontPosition(IIIIZ)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 2766
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    .line 2767
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_>setSubtitleFontPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "@@@VOCommonPlayerImpl"

    invoke-static {p3, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2772
    :cond_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setSubtitleFontSizeScale(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 2505
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2507
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2512
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSubtitleFontSizeScale(I)I

    move-result v0

    .line 2513
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_> nativeSetSubtitleFontSizeScale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2517
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2519
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 2508
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2509
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2519
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleFontUnderline(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 2665
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2667
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2672
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSubtitleFontUnderline(Z)I

    move-result v0

    .line 2673
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_> nativeSetSubtitleFontUnderline: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2677
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2679
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 2668
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2669
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2679
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleGravity(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    const-string v0, "@@@VOCommonPlayerImpl"

    .line 3163
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3164
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 3166
    :try_start_0
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 3171
    :cond_0
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_HORIZONTAL;->getValue()I

    move-result v4

    .line 3172
    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_VERTICAL;->getValue()I

    move-result v5

    .line 3171
    invoke-virtual {v3, v4, v5}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSubtitleGravity(II)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "Fail to load JNI library"

    new-array v4, v2, [Ljava/lang/Object;

    .line 3167
    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3168
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3178
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v3

    .line 3174
    :try_start_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "setSubtitleGravity: Native method is not found!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    .line 3175
    invoke-static {v0, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3178
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3181
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSubtitleGravity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",RETURN:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3183
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 3182
    invoke-static {v0, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3185
    :cond_3
    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1

    .line 3178
    :goto_2
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleImageSizeScale(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 2525
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2527
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2532
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSubtitleImageSizeScale(I)I

    move-result v0

    .line 2533
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_> nativeSetSubtitleImageSizeScale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2537
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2539
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 2528
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2529
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2539
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitlePath(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 2388
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2390
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2395
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2398
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->setSubtitlePath(Ljava/lang/String;)I

    move-result p1

    .line 2399
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2401
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 2391
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2392
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2401
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleTrim(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 2440
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "The player is destroyed."

    .line 2441
    invoke-static {v2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2442
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 2444
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    .line 2445
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2447
    :try_start_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSubtitleTrim: __"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "__"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2450
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setSubtitleTrim(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2452
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2455
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_> setSubtitleTrim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2459
    :cond_2
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 2452
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleTypeface(Landroid/graphics/Typeface;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 2831
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "The player is destroyed."

    .line 2832
    invoke-static {v2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2833
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 2835
    :cond_0
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setSubtitleTypeface(Landroid/graphics/Typeface;)I

    move-result v0

    .line 2836
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2837
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_>setSubtitleTypeface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2839
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setSubtitleWindowBackgroundColor(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 2585
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2587
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2592
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSubtitleWindowBackgroundColor(I)I

    move-result v0

    .line 2593
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_> nativeSetSubtitleWindowBackgroundColor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2597
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2599
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 2588
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2589
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2599
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSubtitleWindowBackgroundOpacity(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 2605
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2607
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2612
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetSubtitleWindowBackgroundOpacity(I)I

    move-result v0

    .line 2613
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_> nativeSetSubtitleWindowBackgroundOpacity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", RETURN: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2617
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2619
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_2
    const-string p1, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 2608
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2609
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2619
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSurface(Landroid/view/Surface;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 3117
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3119
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-nez v0, :cond_0

    :try_start_1
    const-string p1, "The player is destroyed."

    new-array v0, v1, [Ljava/lang/Object;

    .line 3120
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3121
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3126
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_0
    :try_start_2
    const-string v0, "setSurface"

    new-array v1, v1, [Ljava/lang/Object;

    .line 3123
    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3124
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setSurface(Landroid/view/Surface;)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3126
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setSurfaceChangeFinished()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 898
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 900
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "The player is destroyed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 901
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 902
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 904
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setSurfaceChangeFinished()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 906
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setThumbnailMaxHeight(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 3880
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3882
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3886
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetThumbnailMaxHeight(I)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3888
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3883
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3884
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3888
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setThumbnailURI(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 3810
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3812
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3817
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetThumbnailURI(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3820
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3813
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3814
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3820
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setTimeListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerTimeListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    const v0, 0x11012

    .line 3859
    invoke-virtual {p0, v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setParameter(ILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setURLQueryString(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 3547
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3549
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 3553
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 3554
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetURLQueryString(Ljava/lang/String;)I

    move-result p1

    .line 3553
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3556
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3550
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3551
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3556
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setUTCPosition(J)J
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetUTCPosition(J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "Fail to load JNI library"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 799
    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long p1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 806
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setVideoAspectRatio(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 915
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 916
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 918
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setVideoAspectRatio(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;)I

    move-result p1

    .line 919
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 921
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setView(Landroid/view/View;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "The player is destroyed."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 591
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 594
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setView(Landroid/view/View;)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 596
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setViewSize(II)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "The player is destroyed."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 605
    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 608
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setViewSize(II)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 610
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setVolume(F)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 812
    invoke-virtual {p0, p1, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->setVolume(FF)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setVolume(FF)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "The player is destroyed."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 820
    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 823
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setVolume(FF)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 825
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setZoomMode(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;Landroid/graphics/Rect;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 1209
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1211
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_0

    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "The player is destroyed."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1212
    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1213
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1215
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->setZoomMode(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ZOOM_MODE;Landroid/graphics/Rect;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1217
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public sp_Pause()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 730
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativePause()I

    move-result v0

    .line 739
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VOCommonPlayerImpl Pause, return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    .line 740
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 746
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_2
    :goto_1
    :try_start_2
    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 733
    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 746
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public start()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 703
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 705
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ""

    new-array v1, v1, [Ljava/lang/Object;

    .line 710
    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeStart()I

    move-result v0

    .line 713
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v2, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 706
    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 715
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public startAnalyticsNotification(ILcom/visualon/OSMPPlayer/VOOSMPAnalyticsFilter;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1031
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 1037
    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeStartAnalyticsNotification(ILjava/lang/Object;)I

    move-result p1

    .line 1036
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    :goto_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string p2, "Fail to load JNI library"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1032
    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1033
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1039
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public startSEINotification(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 2

    .line 978
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 980
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 986
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeStartSEINotification(I)I

    move-result p1

    .line 985
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_1
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 981
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 982
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 988
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public stop()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .line 752
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "@@@VOCommonPlayerImpl"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, ""

    new-array v3, v2, [Ljava/lang/Object;

    .line 759
    invoke-static {v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 762
    :try_start_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeStop()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    const-string v0, "nativeStop Error!"

    new-array v3, v2, [Ljava/lang/Object;

    .line 764
    invoke-static {v1, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 767
    :goto_0
    invoke-static {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 770
    :goto_1
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :goto_2
    :try_start_4
    const-string v0, "Fail to load JNI library"

    new-array v2, v2, [Ljava/lang/Object;

    .line 755
    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 770
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public stopAnalyticsNotification()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1045
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1047
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 1053
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeStopAnalyticsNotification()I

    move-result v0

    .line 1052
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Fail to load JNI library"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1048
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1049
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1055
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public stopSEINotification()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 994
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 996
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 1002
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeStopSEINotification()I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Fail to load JNI library"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 997
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 998
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1004
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public suspend(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 863
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 865
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "@@@VOCommonPlayerImpl"

    if-eqz v0, :cond_2

    :try_start_1
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    if-nez v0, :cond_1

    const-string p1, "The player is destroyed."

    new-array v0, v1, [Ljava/lang/Object;

    .line 870
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 871
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 877
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 873
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSuspend(Z)I

    move-result p1

    .line 874
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJavaImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJavaImpl;->suspend()I

    .line 875
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, "Fail to load JNI library"

    new-array v0, v1, [Ljava/lang/Object;

    .line 866
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 877
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public unmute()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 847
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeUnmute()I

    move-result v0

    .line 855
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    :goto_1
    :try_start_1
    const-string v0, "@@@VOCommonPlayerImpl"

    const-string v1, "Fail to load JNI library"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 850
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 851
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 857
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public updateSourceURL(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 1010
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1012
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1017
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mJNI:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeUpdateSourceURL(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "@@@VOCommonPlayerImpl"

    const-string v0, "Fail to load JNI library"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1013
    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1014
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1022
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->mutex_:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
