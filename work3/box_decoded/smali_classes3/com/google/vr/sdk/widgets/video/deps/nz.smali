.class public final Lcom/google/vr/sdk/widgets/video/deps/nz;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/nr;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/oo;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/nr;

.field private d:Lcom/google/vr/sdk/widgets/video/deps/nr;

.field private e:Lcom/google/vr/sdk/widgets/video/deps/nr;

.field private f:Lcom/google/vr/sdk/widgets/video/deps/nr;

.field private g:Lcom/google/vr/sdk/widgets/video/deps/nr;

.field private h:Lcom/google/vr/sdk/widgets/video/deps/nr;

.field private i:Lcom/google/vr/sdk/widgets/video/deps/nr;

.field private j:Lcom/google/vr/sdk/widgets/video/deps/nr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/nr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->a:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/nr;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->c:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->b:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V
    .locals 2

    const/4 v0, 0x0

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/oo;

    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a(Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/oo;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 83
    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a(Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    :cond_0
    return-void
.end method

.method private d()Lcom/google/vr/sdk/widgets/video/deps/nr;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->d:Lcom/google/vr/sdk/widgets/video/deps/nr;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/oe;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/oe;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->d:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 47
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/nz;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->d:Lcom/google/vr/sdk/widgets/video/deps/nr;

    return-object v0
.end method

.method private e()Lcom/google/vr/sdk/widgets/video/deps/nr;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->e:Lcom/google/vr/sdk/widgets/video/deps/nr;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/nm;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/nm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->e:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 51
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/nz;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->e:Lcom/google/vr/sdk/widgets/video/deps/nr;

    return-object v0
.end method

.method private f()Lcom/google/vr/sdk/widgets/video/deps/nr;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->f:Lcom/google/vr/sdk/widgets/video/deps/nr;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/np;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/np;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->f:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 55
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/nz;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->f:Lcom/google/vr/sdk/widgets/video/deps/nr;

    return-object v0
.end method

.method private g()Lcom/google/vr/sdk/widgets/video/deps/nr;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->g:Lcom/google/vr/sdk/widgets/video/deps/nr;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    .line 58
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/nr;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->g:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 60
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/nz;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating RTMP extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->g:Lcom/google/vr/sdk/widgets/video/deps/nr;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->c:Lcom/google/vr/sdk/widgets/video/deps/nr;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->g:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->g:Lcom/google/vr/sdk/widgets/video/deps/nr;

    return-object v0
.end method

.method private h()Lcom/google/vr/sdk/widgets/video/deps/nr;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->h:Lcom/google/vr/sdk/widgets/video/deps/nr;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/nq;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/nq;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->h:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 72
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/nz;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->h:Lcom/google/vr/sdk/widgets/video/deps/nr;

    return-object v0
.end method

.method private i()Lcom/google/vr/sdk/widgets/video/deps/nr;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->i:Lcom/google/vr/sdk/widgets/video/deps/nr;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/om;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/om;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->i:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 76
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/nz;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->i:Lcom/google/vr/sdk/widgets/video/deps/nr;

    return-object v0
.end method


# virtual methods
.method public a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->j:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a([BII)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/nv;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->j:Lcom/google/vr/sdk/widgets/video/deps/nr;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 16
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 17
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->a:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/nz;->e()Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->j:Lcom/google/vr/sdk/widgets/video/deps/nr;

    goto :goto_1

    .line 20
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/nz;->d()Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->j:Lcom/google/vr/sdk/widgets/video/deps/nr;

    goto :goto_1

    :cond_2
    const-string v1, "asset"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/nz;->e()Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->j:Lcom/google/vr/sdk/widgets/video/deps/nr;

    goto :goto_1

    :cond_3
    const-string v1, "content"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 24
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/nz;->f()Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->j:Lcom/google/vr/sdk/widgets/video/deps/nr;

    goto :goto_1

    :cond_4
    const-string v1, "rtmp"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 26
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/nz;->g()Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->j:Lcom/google/vr/sdk/widgets/video/deps/nr;

    goto :goto_1

    :cond_5
    const-string v1, "data"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 28
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/nz;->h()Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->j:Lcom/google/vr/sdk/widgets/video/deps/nr;

    goto :goto_1

    :cond_6
    const-string v1, "rawresource"

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/nz;->i()Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->j:Lcom/google/vr/sdk/widgets/video/deps/nr;

    goto :goto_1

    .line 31
    :cond_7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->c:Lcom/google/vr/sdk/widgets/video/deps/nr;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->j:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 32
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->j:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Landroid/net/Uri;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->j:Lcom/google/vr/sdk/widgets/video/deps/nr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/oo;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->c:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a(Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->d:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nz;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->e:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nz;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->f:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nz;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->g:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nz;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->h:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nz;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->i:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-direct {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nz;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    return-void
.end method

.method public b()Ljava/util/Map;
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

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->j:Lcom/google/vr/sdk/widgets/video/deps/nr;

    if-nez v0, :cond_0

    .line 36
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/ns;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_0
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nr;->b()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->j:Lcom/google/vr/sdk/widgets/video/deps/nr;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 40
    :try_start_0
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nr;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->j:Lcom/google/vr/sdk/widgets/video/deps/nr;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 43
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nz;->j:Lcom/google/vr/sdk/widgets/video/deps/nr;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
