.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/fo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/fr;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/hc;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/fr;Lcom/google/ads/interactivemedia/v3/internal/hc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->a:Lcom/google/ads/interactivemedia/v3/internal/fr;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:Lcom/google/ads/interactivemedia/v3/internal/hc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->a:Lcom/google/ads/interactivemedia/v3/internal/fr;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:Lcom/google/ads/interactivemedia/v3/internal/hc;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fr;->c(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    return-void
.end method
