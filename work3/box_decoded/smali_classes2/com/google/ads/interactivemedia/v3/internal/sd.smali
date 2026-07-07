.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/sd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/sk;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/sk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sd;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sd;->a:Lcom/google/ads/interactivemedia/v3/internal/sk;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/sk;->k()V

    return-void
.end method
