.class final Lcom/google/ads/interactivemedia/v3/internal/aap;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/aao;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/aao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aap;->a:Lcom/google/ads/interactivemedia/v3/internal/aao;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aap;->a:Lcom/google/ads/interactivemedia/v3/internal/aao;

    .line 1
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/aao;->h()V

    return-void
.end method
