.class final Lcom/google/ads/interactivemedia/v3/internal/jy;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ka;


# instance fields
.field private final a:[J

.field private final b:[J

.field private final c:J


# direct methods
.method private constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jy;->a:[J

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jy;->b:[J

    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 1
    aget-wide p1, p2, p1

    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jy;->c:J

    return-void
.end method

.method private static a(J[J[J)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[J[J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 20
    invoke-static {p2, p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b([JJZ)I

    move-result v1

    .line 21
    aget-wide v2, p2, v1

    .line 22
    aget-wide v4, p3, v1

    add-int/2addr v1, v0

    array-length v0, p2

    if-ne v1, v0, :cond_0

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 24
    :cond_0
    aget-wide v6, p2, v1

    .line 25
    aget-wide p2, p3, v1

    cmp-long v0, v6, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    long-to-double v0, p0

    long-to-double v8, v2

    sub-double/2addr v0, v8

    sub-long/2addr v6, v2

    long-to-double v2, v6

    div-double/2addr v0, v2

    .line 26
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sub-long/2addr p2, v4

    long-to-double p1, p2

    mul-double v0, v0, p1

    double-to-long p1, v0

    add-long/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLcom/google/ads/interactivemedia/v3/internal/pz;)Lcom/google/ads/interactivemedia/v3/internal/jy;
    .locals 9

    .line 2
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/pz;->d:[I

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    .line 3
    new-array v2, v1, [J

    .line 4
    new-array v1, v1, [J

    const/4 v3, 0x0

    .line 5
    aput-wide p0, v2, v3

    const-wide/16 v4, 0x0

    .line 6
    aput-wide v4, v1, v3

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v0, :cond_0

    add-int/lit8 v6, v3, -0x1

    .line 7
    iget v7, p2, Lcom/google/ads/interactivemedia/v3/internal/pz;->b:I

    iget-object v8, p2, Lcom/google/ads/interactivemedia/v3/internal/pz;->d:[I

    aget v8, v8, v6

    add-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr p0, v7

    .line 8
    iget v7, p2, Lcom/google/ads/interactivemedia/v3/internal/pz;->c:I

    iget-object v8, p2, Lcom/google/ads/interactivemedia/v3/internal/pz;->e:[I

    aget v6, v8, v6

    add-int/2addr v7, v6

    int-to-long v6, v7

    add-long/2addr v4, v6

    .line 9
    aput-wide p0, v2, v3

    .line 10
    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/jy;

    .line 11
    invoke-direct {p0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/jy;-><init>([J[J)V

    return-object p0
.end method


# virtual methods
.method public final a(J)Lcom/google/ads/interactivemedia/v3/internal/is;
    .locals 6

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jy;->c:J

    const-wide/16 v2, 0x0

    move-wide v0, p1

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(JJJ)J

    move-result-wide p1

    .line 13
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jy;->b:[J

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jy;->a:[J

    invoke-static {p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jy;->a(J[J[J)Landroid/util/Pair;

    move-result-object p1

    .line 14
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 15
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/is;

    .line 16
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/iv;

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v0

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/iv;-><init>(JJ)V

    .line 17
    invoke-direct {v2, v3, v3}, Lcom/google/ads/interactivemedia/v3/internal/is;-><init>(Lcom/google/ads/interactivemedia/v3/internal/iv;Lcom/google/ads/interactivemedia/v3/internal/iv;)V

    return-object v2
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jy;->c:J

    return-wide v0
.end method

.method public final b(J)J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jy;->a:[J

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jy;->b:[J

    .line 18
    invoke-static {p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/jy;->a(J[J[J)Landroid/util/Pair;

    move-result-object p1

    .line 19
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final c()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
