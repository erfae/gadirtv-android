.class public final Lcom/google/ads/interactivemedia/v3/internal/zx;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zo;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/aay;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/zo;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/zo;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/zo;

.field private f:Lcom/google/ads/interactivemedia/v3/internal/zo;

.field private g:Lcom/google/ads/interactivemedia/v3/internal/zo;

.field private h:Lcom/google/ads/interactivemedia/v3/internal/zo;

.field private i:Lcom/google/ads/interactivemedia/v3/internal/zo;

.field private j:Lcom/google/ads/interactivemedia/v3/internal/zo;

.field private k:Lcom/google/ads/interactivemedia/v3/internal/zo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/zo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->a:Landroid/content/Context;

    .line 2
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->c:Lcom/google/ads/interactivemedia/v3/internal/zo;

    new-instance p1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->b:Ljava/util/List;

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->b:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->b:Ljava/util/List;

    .line 5
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/aay;

    invoke-interface {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zo;->a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final a(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/aay;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 22
    invoke-interface {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zo;->a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    :cond_0
    return-void
.end method

.method private final d()Lcom/google/ads/interactivemedia/v3/internal/zo;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->e:Lcom/google/ads/interactivemedia/v3/internal/zo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zc;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->a:Landroid/content/Context;

    .line 18
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->e:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 19
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zx;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->e:Lcom/google/ads/interactivemedia/v3/internal/zo;

    return-object v0
.end method


# virtual methods
.method public final a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->k:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 52
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zo;->a([BII)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/zs;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->k:Lcom/google/ads/interactivemedia/v3/internal/zo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    .line 24
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 25
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->a:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/android_asset/"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zx;->d()Lcom/google/ads/interactivemedia/v3/internal/zo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->k:Lcom/google/ads/interactivemedia/v3/internal/zo;

    goto/16 :goto_3

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->d:Lcom/google/ads/interactivemedia/v3/internal/zo;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aac;

    .line 28
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/aac;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->d:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 29
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zx;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->d:Lcom/google/ads/interactivemedia/v3/internal/zo;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->k:Lcom/google/ads/interactivemedia/v3/internal/zo;

    goto/16 :goto_3

    :cond_3
    const-string v2, "asset"

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 32
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zx;->d()Lcom/google/ads/interactivemedia/v3/internal/zo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->k:Lcom/google/ads/interactivemedia/v3/internal/zo;

    goto/16 :goto_3

    :cond_4
    const-string v2, "content"

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->f:Lcom/google/ads/interactivemedia/v3/internal/zo;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zk;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->a:Landroid/content/Context;

    .line 34
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->f:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 35
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zx;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    :cond_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->f:Lcom/google/ads/interactivemedia/v3/internal/zo;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->k:Lcom/google/ads/interactivemedia/v3/internal/zo;

    goto/16 :goto_3

    :cond_6
    const-string v2, "rtmp"

    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->g:Lcom/google/ads/interactivemedia/v3/internal/zo;

    if-nez v0, :cond_7

    :try_start_0
    const-string v0, "com.google.ads.interactivemedia.v3.exoplayer2.ext.rtmp.RtmpDataSource"

    .line 37
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zo;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->g:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 39
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zx;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating RTMP extension"

    .line 40
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->g:Lcom/google/ads/interactivemedia/v3/internal/zo;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->c:Lcom/google/ads/interactivemedia/v3/internal/zo;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->g:Lcom/google/ads/interactivemedia/v3/internal/zo;

    :cond_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->g:Lcom/google/ads/interactivemedia/v3/internal/zo;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->k:Lcom/google/ads/interactivemedia/v3/internal/zo;

    goto :goto_3

    :cond_8
    const-string v1, "udp"

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->h:Lcom/google/ads/interactivemedia/v3/internal/zo;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aba;

    .line 43
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/aba;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->h:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 44
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zx;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    :cond_9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->h:Lcom/google/ads/interactivemedia/v3/internal/zo;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->k:Lcom/google/ads/interactivemedia/v3/internal/zo;

    goto :goto_3

    :cond_a
    const-string v1, "data"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->i:Lcom/google/ads/interactivemedia/v3/internal/zo;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zm;

    .line 46
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zm;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->i:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 47
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zx;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    :cond_b
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->i:Lcom/google/ads/interactivemedia/v3/internal/zo;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->k:Lcom/google/ads/interactivemedia/v3/internal/zo;

    goto :goto_3

    :cond_c
    const-string v1, "rawresource"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->j:Lcom/google/ads/interactivemedia/v3/internal/zo;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aaw;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->a:Landroid/content/Context;

    .line 49
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aaw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->j:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 50
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zx;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    :cond_d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->j:Lcom/google/ads/interactivemedia/v3/internal/zo;

    goto :goto_2

    :cond_e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->c:Lcom/google/ads/interactivemedia/v3/internal/zo;

    :goto_2
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->k:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 30
    :goto_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->k:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 51
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zo;->a(Lcom/google/ads/interactivemedia/v3/internal/zs;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->k:Lcom/google/ads/interactivemedia/v3/internal/zo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zo;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V
    .locals 1

    .line 6
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->c:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 7
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zo;->a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->b:Ljava/util/List;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->d:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 9
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zx;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->e:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 10
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zx;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->f:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 11
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zx;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->g:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 12
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zx;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->h:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 13
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zx;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->i:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 14
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zx;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->j:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 15
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zx;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->k:Lcom/google/ads/interactivemedia/v3/internal/zo;

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zo;->b()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->k:Lcom/google/ads/interactivemedia/v3/internal/zo;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 16
    :try_start_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zo;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->k:Lcom/google/ads/interactivemedia/v3/internal/zo;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zx;->k:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 17
    throw v0

    :cond_0
    return-void
.end method
