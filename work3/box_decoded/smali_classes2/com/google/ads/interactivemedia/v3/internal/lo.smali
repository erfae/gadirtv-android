.class final Lcom/google/ads/interactivemedia/v3/internal/lo;
.super Lcom/google/ads/interactivemedia/v3/internal/lr;
.source "IMASDK"


# static fields
.field private static final a:[B


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/lo;->a:[B

    return-void

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/lr;-><init>()V

    return-void
.end method

.method public static b(Lcom/google/ads/interactivemedia/v3/internal/abr;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/lo;->a:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    return v3

    :cond_0
    array-length v0, v1

    new-array v0, v0, [B

    array-length v2, v1

    .line 16
    invoke-virtual {p0, v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    .line 17
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)J
    .locals 6

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    .line 3
    aget-byte p1, p1, v3

    and-int/lit8 v2, p1, 0x3f

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    const/4 p1, 0x3

    shr-int/2addr v0, p1

    and-int/lit8 v1, v0, 0x3

    const/16 v4, 0x10

    if-lt v0, v4, :cond_2

    const/16 p1, 0x9c4

    shl-int/2addr p1, v1

    goto :goto_1

    :cond_2
    const/16 v4, 0xc

    const/16 v5, 0x2710

    if-lt v0, v4, :cond_3

    and-int/lit8 p1, v1, 0x1

    shl-int p1, v5, p1

    goto :goto_1

    :cond_3
    if-ne v1, p1, :cond_4

    const p1, 0xea60

    goto :goto_1

    :cond_4
    shl-int p1, v5, v1

    :goto_1
    int-to-long v0, v2

    int-to-long v2, p1

    mul-long v0, v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/lr;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final a(Z)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/lr;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lo;->b:Z

    :cond_0
    return-void
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/abr;JLcom/google/ads/interactivemedia/v3/internal/lp;)Z
    .locals 2

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lo;->b:Z

    const/4 p3, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result p1

    .line 4
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/16 p2, 0x9

    .line 5
    aget-byte p2, p1, p2

    .line 6
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a([B)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 7
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    const-string v1, "audio/opus"

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    and-int/lit16 p2, p2, 0xff

    .line 9
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(I)V

    const p2, 0xbb80

    .line 10
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->m(I)V

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/util/List;)V

    .line 12
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p1

    iput-object p1, p4, Lcom/google/ads/interactivemedia/v3/internal/lp;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/lo;->b:Z

    return p3

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result p2

    const p4, 0x4f707573

    const/4 v0, 0x0

    if-ne p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 14
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    return p3
.end method
