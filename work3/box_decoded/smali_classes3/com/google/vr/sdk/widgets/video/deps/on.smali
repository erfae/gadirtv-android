.class public final Lcom/google/vr/sdk/widgets/video/deps/on;
.super Ljava/lang/Object;
.source "StatsDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/nr;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/nr;

.field private b:J

.field private c:Landroid/net/Uri;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/nr;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 3
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->c:Landroid/net/Uri;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 21
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->b:J

    :cond_0
    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/nv;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->c:Landroid/net/Uri;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->d:Ljava/util/Map;

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;)J

    move-result-wide v0

    .line 16
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/on;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->c:Landroid/net/Uri;

    .line 17
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/on;->b()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->d:Ljava/util/Map;

    return-wide v0
.end method

.method public a()Landroid/net/Uri;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/oo;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a(Lcom/google/vr/sdk/widgets/video/deps/oo;)V

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

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nr;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->a:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nr;->c()V

    return-void
.end method

.method public d()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->b:J

    return-void
.end method

.method public e()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->b:J

    return-wide v0
.end method

.method public f()Landroid/net/Uri;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public g()Ljava/util/Map;
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

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/on;->d:Ljava/util/Map;

    return-object v0
.end method
