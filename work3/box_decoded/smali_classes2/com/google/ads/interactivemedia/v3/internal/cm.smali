.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/cm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/cv;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/ea;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/cv;Lcom/google/ads/interactivemedia/v3/internal/ea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->a:Lcom/google/ads/interactivemedia/v3/internal/cv;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->b:Lcom/google/ads/interactivemedia/v3/internal/ea;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->a:Lcom/google/ads/interactivemedia/v3/internal/cv;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cm;->b:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cv;->b(Lcom/google/ads/interactivemedia/v3/internal/ea;)V

    return-void
.end method
