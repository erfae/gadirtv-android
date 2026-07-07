.class public final Lcom/google/ads/interactivemedia/v3/internal/vj;
.super Lcom/google/ads/interactivemedia/v3/internal/vl;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/up;


# instance fields
.field private final e:Lcom/google/ads/interactivemedia/v3/internal/vm;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/vm;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/vm;",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ve;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/vl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/vr;Ljava/util/List;)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/vj;->e:Lcom/google/ads/interactivemedia/v3/internal/vm;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vj;->e:Lcom/google/ads/interactivemedia/v3/internal/vm;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/vm;->a:J

    return-wide v0
.end method

.method public final a(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vj;->e:Lcom/google/ads/interactivemedia/v3/internal/vm;

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/vm;->a(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(JJ)J
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/vj;->e:Lcom/google/ads/interactivemedia/v3/internal/vm;

    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/vm;->a:J

    move-wide/from16 v4, p3

    .line 8
    invoke-virtual {v1, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/vm;->b(J)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/vm;->c:Ljava/util/List;

    const-wide/16 v7, -0x1

    if-nez v6, :cond_3

    iget-wide v9, v1, Lcom/google/ads/interactivemedia/v3/internal/vm;->b:J

    iget-wide v11, v1, Lcom/google/ads/interactivemedia/v3/internal/vm;->h:J

    const-wide/32 v13, 0xf4240

    mul-long v9, v9, v13

    .line 9
    div-long/2addr v9, v11

    iget-wide v11, v1, Lcom/google/ads/interactivemedia/v3/internal/vm;->a:J

    .line 10
    div-long v9, p1, v9

    add-long/2addr v11, v9

    cmp-long v1, v11, v2

    if-gez v1, :cond_1

    goto :goto_2

    :cond_1
    cmp-long v1, v4, v7

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    add-long/2addr v2, v4

    add-long/2addr v2, v7

    .line 11
    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_2

    :cond_3
    add-long/2addr v4, v2

    add-long/2addr v4, v7

    move-wide v9, v2

    :goto_0
    cmp-long v6, v9, v4

    if-gtz v6, :cond_6

    sub-long v11, v4, v9

    const-wide/16 v13, 0x2

    div-long/2addr v11, v13

    add-long/2addr v11, v9

    .line 12
    invoke-virtual {v1, v11, v12}, Lcom/google/ads/interactivemedia/v3/internal/vm;->a(J)J

    move-result-wide v13

    cmp-long v6, v13, p1

    if-gez v6, :cond_4

    const-wide/16 v9, 0x1

    add-long/2addr v9, v11

    goto :goto_0

    :cond_4
    if-lez v6, :cond_5

    add-long/2addr v11, v7

    move-wide v4, v11

    goto :goto_0

    :cond_5
    :goto_1
    move-wide v2, v11

    goto :goto_2

    :cond_6
    cmp-long v1, v9, v2

    if-eqz v1, :cond_7

    move-wide v2, v4

    :goto_2
    return-wide v2

    :cond_7
    return-wide v9
.end method

.method public final b(JJ)J
    .locals 8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vj;->e:Lcom/google/ads/interactivemedia/v3/internal/vm;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/vm;->c:Ljava/util/List;

    const-wide/32 v2, 0xf4240

    if-eqz v1, :cond_0

    iget-wide p3, v0, Lcom/google/ads/interactivemedia/v3/internal/vm;->a:J

    sub-long/2addr p1, p3

    long-to-int p2, p1

    .line 2
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/vp;

    iget-wide p1, p1, Lcom/google/ads/interactivemedia/v3/internal/vp;->b:J

    mul-long p1, p1, v2

    iget-wide p3, v0, Lcom/google/ads/interactivemedia/v3/internal/vm;->h:J

    .line 3
    div-long/2addr p1, p3

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/vm;->b(J)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/vm;->a:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    const-wide/16 v6, -0x1

    add-long/2addr v4, v6

    cmp-long v1, p1, v4

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/vm;->a(J)J

    move-result-wide p1

    sub-long/2addr p3, p1

    move-wide p1, p3

    goto :goto_0

    :cond_1
    iget-wide p1, v0, Lcom/google/ads/interactivemedia/v3/internal/vm;->b:J

    mul-long p1, p1, v2

    iget-wide p3, v0, Lcom/google/ads/interactivemedia/v3/internal/vm;->h:J

    .line 5
    div-long/2addr p1, p3

    :goto_0
    return-wide p1
.end method

.method public final b(J)Lcom/google/ads/interactivemedia/v3/internal/vi;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vj;->e:Lcom/google/ads/interactivemedia/v3/internal/vm;

    .line 13
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/vm;->a(Lcom/google/ads/interactivemedia/v3/internal/vl;J)Lcom/google/ads/interactivemedia/v3/internal/vi;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vj;->e:Lcom/google/ads/interactivemedia/v3/internal/vm;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/vm;->a()Z

    move-result v0

    return v0
.end method

.method public final c(J)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vj;->e:Lcom/google/ads/interactivemedia/v3/internal/vm;

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/vm;->b(J)I

    move-result p1

    return p1
.end method

.method public final c()Lcom/google/ads/interactivemedia/v3/internal/vi;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Lcom/google/ads/interactivemedia/v3/internal/up;
    .locals 0

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
