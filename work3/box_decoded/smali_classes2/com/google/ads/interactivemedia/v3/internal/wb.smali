.class final Lcom/google/ads/interactivemedia/v3/internal/wb;
.super Lcom/google/ads/interactivemedia/v3/internal/ts;
.source "IMASDK"


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;[B)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/ads/interactivemedia/v3/internal/ts;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;[B)V

    return-void
.end method


# virtual methods
.method protected final a([BI)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wb;->a:[B

    return-void
.end method

.method public final g()[B
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wb;->a:[B

    return-object v0
.end method
