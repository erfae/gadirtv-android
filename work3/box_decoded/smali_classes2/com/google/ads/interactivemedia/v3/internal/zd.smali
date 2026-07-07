.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ze;

.field private final b:I

.field private final c:J

.field private final d:J


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ze;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zd;->a:Lcom/google/ads/interactivemedia/v3/internal/ze;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zd;->b:I

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zd;->c:J

    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zd;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zd;->a:Lcom/google/ads/interactivemedia/v3/internal/ze;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zd;->b:I

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zd;->c:J

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zd;->d:J

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ze;->a(Lcom/google/ads/interactivemedia/v3/internal/ze;)Lcom/google/ads/interactivemedia/v3/internal/zg;

    move-result-object v1

    invoke-interface/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/zg;->b(IJJ)V

    return-void
.end method
