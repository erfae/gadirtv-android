.class final Lcom/google/ads/interactivemedia/v3/internal/nt;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nt;->a:I

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/nt;->b:J

    return-void
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/abr;)Lcom/google/ads/interactivemedia/v3/internal/nt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result p0

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->m()J

    move-result-wide v0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/nt;

    .line 5
    invoke-direct {p1, p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/nt;-><init>(IJ)V

    return-object p1
.end method
