.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ck;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/cr;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ck;Lcom/google/ads/interactivemedia/v3/internal/cr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bt;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bt;->b:Lcom/google/ads/interactivemedia/v3/internal/cr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bt;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bt;->b:Lcom/google/ads/interactivemedia/v3/internal/cr;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ck;->b(Lcom/google/ads/interactivemedia/v3/internal/cr;)V

    return-void
.end method
