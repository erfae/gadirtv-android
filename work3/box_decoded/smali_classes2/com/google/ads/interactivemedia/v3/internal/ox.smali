.class public final Lcom/google/ads/interactivemedia/v3/internal/ox;
.super Lcom/google/ads/interactivemedia/v3/internal/ou;
.source "IMASDK"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ou;-><init>()V

    return-void
.end method

.method public static final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)Lcom/google/ads/interactivemedia/v3/internal/ow;
    .locals 8

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v3

    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result p0

    .line 6
    invoke-static {v0, v7, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 7
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/ow;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/ow;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object p0
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;)Lcom/google/ads/interactivemedia/v3/internal/ot;
    .locals 4

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ot;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/ads/interactivemedia/v3/internal/os;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-direct {v2, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([BI)V

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ox;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;)Lcom/google/ads/interactivemedia/v3/internal/ow;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ot;-><init>([Lcom/google/ads/interactivemedia/v3/internal/os;)V

    return-object v0
.end method
