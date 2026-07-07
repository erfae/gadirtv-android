.class final Lcom/google/ads/interactivemedia/v3/internal/qm;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/sb;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ij;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/ih;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/ie;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ij;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->a:Lcom/google/ads/interactivemedia/v3/internal/ij;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ir;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    .line 15
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->c:Lcom/google/ads/interactivemedia/v3/internal/ie;

    .line 16
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/ih;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I

    move-result p1

    return p1
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    :cond_0
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->c:Lcom/google/ads/interactivemedia/v3/internal/ie;

    return-void
.end method

.method public final a(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    .line 17
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/ih;->a(JJ)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/zl;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/ads/interactivemedia/v3/internal/ii;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/zl;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lcom/google/ads/interactivemedia/v3/internal/ii;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/ie;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/ie;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zl;JJ)V

    iput-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->c:Lcom/google/ads/interactivemedia/v3/internal/ie;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->a:Lcom/google/ads/interactivemedia/v3/internal/ij;

    .line 4
    invoke-interface {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ij;->a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/ads/interactivemedia/v3/internal/ih;

    move-result-object p1

    .line 5
    array-length p3, p1

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_1

    .line 13
    aget-object p1, p1, p6

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    goto :goto_4

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_9

    .line 6
    aget-object v1, p1, v0

    .line 7
    :try_start_0
    invoke-interface {v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/ih;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v0

    cmp-long p3, v0, p4

    if-nez p3, :cond_3

    :cond_2
    const/4 p6, 0x1

    .line 8
    :cond_3
    invoke-static {p6}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    .line 9
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    goto :goto_3

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    if-nez v1, :cond_8

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-nez v3, :cond_7

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    if-nez p2, :cond_5

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide p2

    cmp-long p8, p2, p4

    if-nez p8, :cond_6

    :cond_5
    const/4 p6, 0x1

    .line 8
    :cond_6
    invoke-static {p6}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    .line 9
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    .line 10
    throw p1

    :catch_0
    nop

    .line 9
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    if-nez v1, :cond_8

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v1, 0x1

    .line 8
    :goto_2
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    .line 9
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    :goto_3
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    if-eqz p3, :cond_a

    .line 13
    :goto_4
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    .line 14
    invoke-interface {p1, p8}, Lcom/google/ads/interactivemedia/v3/internal/ih;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V

    return-void

    .line 9
    :cond_a
    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/tc;

    .line 11
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    new-instance p5, Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x3a

    invoke-direct {p5, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "None of the available extractors ("

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/tc;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->b:Lcom/google/ads/interactivemedia/v3/internal/ih;

    .line 1
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/jz;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/jz;->a()V

    :cond_0
    return-void
.end method

.method public final c()J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qm;->c:Lcom/google/ads/interactivemedia/v3/internal/ie;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
