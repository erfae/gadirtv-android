.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/fq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/fr;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/fr;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fq;->a:Lcom/google/ads/interactivemedia/v3/internal/fr;

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/fq;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fq;->a:Lcom/google/ads/interactivemedia/v3/internal/fr;

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fq;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fr;->b(Z)V

    return-void
.end method
