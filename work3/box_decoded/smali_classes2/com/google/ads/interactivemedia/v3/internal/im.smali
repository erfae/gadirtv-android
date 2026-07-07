.class public final Lcom/google/ads/interactivemedia/v3/internal/im;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/iu;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/io;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/io;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/im;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/im;->b:J

    return-void
.end method

.method private final a(JJ)Lcom/google/ads/interactivemedia/v3/internal/iv;
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/im;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    .line 2
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/io;->e:I

    const-wide/32 v1, 0xf4240

    mul-long p1, p1, v1

    int-to-long v0, v0

    div-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/im;->b:J

    .line 3
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/iv;

    add-long/2addr v0, p3

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/iv;-><init>(JJ)V

    return-object v2
.end method


# virtual methods
.method public final a(J)Lcom/google/ads/interactivemedia/v3/internal/is;
    .locals 8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/im;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    .line 4
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/io;->k:Lcom/google/ads/interactivemedia/v3/internal/in;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/im;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    .line 5
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/io;->k:Lcom/google/ads/interactivemedia/v3/internal/in;

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/in;->a:[J

    .line 6
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/in;->b:[J

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/io;->a(J)J

    move-result-wide v3

    const/4 v0, 0x0

    .line 8
    invoke-static {v2, v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b([JJZ)I

    move-result v0

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    move-wide v6, v3

    goto :goto_0

    .line 9
    :cond_0
    aget-wide v6, v2, v0

    :goto_0
    if-ne v0, v5, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    aget-wide v3, v1, v0

    .line 11
    :goto_1
    invoke-direct {p0, v6, v7, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/im;->a(JJ)Lcom/google/ads/interactivemedia/v3/internal/iv;

    move-result-object v3

    iget-wide v6, v3, Lcom/google/ads/interactivemedia/v3/internal/iv;->b:J

    cmp-long v4, v6, p1

    if-eqz v4, :cond_3

    .line 12
    array-length p1, v2

    add-int/2addr p1, v5

    if-ne v0, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 14
    aget-wide p1, v2, v0

    aget-wide v0, v1, v0

    .line 15
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/im;->a(JJ)Lcom/google/ads/interactivemedia/v3/internal/iv;

    move-result-object p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/is;

    .line 16
    invoke-direct {p2, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/is;-><init>(Lcom/google/ads/interactivemedia/v3/internal/iv;Lcom/google/ads/interactivemedia/v3/internal/iv;)V

    return-object p2

    .line 12
    :cond_3
    :goto_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/is;

    .line 13
    invoke-direct {p1, v3, v3}, Lcom/google/ads/interactivemedia/v3/internal/is;-><init>(Lcom/google/ads/interactivemedia/v3/internal/iv;Lcom/google/ads/interactivemedia/v3/internal/iv;)V

    return-object p1
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/im;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    .line 1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/io;->a()J

    move-result-wide v0

    return-wide v0
.end method
