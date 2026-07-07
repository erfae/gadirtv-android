.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/jd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/hy;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/io;


# direct methods
.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/io;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    return-void
.end method

.method static a(Lcom/google/ads/interactivemedia/v3/internal/io;)Lcom/google/ads/interactivemedia/v3/internal/hy;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jd;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/jd;-><init>(Lcom/google/ads/interactivemedia/v3/internal/io;)V

    return-object v0
.end method


# virtual methods
.method public final a(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jd;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/io;->a(J)J

    move-result-wide p1

    return-wide p1
.end method
