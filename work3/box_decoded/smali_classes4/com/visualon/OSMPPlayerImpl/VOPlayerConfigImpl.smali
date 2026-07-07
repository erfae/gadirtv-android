.class public Lcom/visualon/OSMPPlayerImpl/VOPlayerConfigImpl;
.super Ljava/lang/Object;
.source "VOPlayerConfigImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOPlayerConfig;


# instance fields
.field private mChildConfig:Lcom/visualon/OSMPPlayer/VOPlayerConfig;

.field private final mConfigurationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOPlayerConfigImpl;->mChildConfig:Lcom/visualon/OSMPPlayer/VOPlayerConfig;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOPlayerConfigImpl;->mConfigurationMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPPlayer/VOPlayerConfig;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOPlayerConfigImpl;->mChildConfig:Lcom/visualon/OSMPPlayer/VOPlayerConfig;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOPlayerConfigImpl;->mConfigurationMap:Ljava/util/HashMap;

    .line 38
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOPlayerConfigImpl;->mChildConfig:Lcom/visualon/OSMPPlayer/VOPlayerConfig;

    return-void
.end method


# virtual methods
.method public parseJson(Ljava/lang/String;)Z
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOPlayerConfigImpl;->mConfigurationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 44
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 47
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 50
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOPlayerConfigImpl;->mConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 57
    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    .line 55
    monitor-exit v0

    return p1

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOPlayerConfigImpl;->mConfigurationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOPlayerConfigImpl;->mConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public valueForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOPlayerConfigImpl;->mConfigurationMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOPlayerConfigImpl;->mConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOPlayerConfigImpl;->mConfigurationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOPlayerConfigImpl;->mChildConfig:Lcom/visualon/OSMPPlayer/VOPlayerConfig;

    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v1, p1}, Lcom/visualon/OSMPPlayer/VOPlayerConfig;->valueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
