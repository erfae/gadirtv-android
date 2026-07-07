.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/fl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/fr;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:J


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/fr;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fl;->a:Lcom/google/ads/interactivemedia/v3/internal/fr;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/fl;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/fl;->c:J

    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/internal/fl;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fl;->a:Lcom/google/ads/interactivemedia/v3/internal/fr;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fl;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/fl;->c:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/fl;->d:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/fr;->b(Ljava/lang/String;JJ)V

    return-void
.end method
