.class final Lcom/google/ads/interactivemedia/v3/internal/ahx;
.super Lcom/google/ads/interactivemedia/v3/internal/aeg;
.source "IMASDK"


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/internal/ahy;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ahy;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ahx;->b:Lcom/google/ads/interactivemedia/v3/internal/ahy;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ahx;->a:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aeg;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/google/ads/interactivemedia/v3/internal/aio;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ahx;->b:Lcom/google/ads/interactivemedia/v3/internal/ahy;

    .line 1
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ahy;->b:Lcom/google/ads/interactivemedia/v3/internal/aeg;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aeg;->read(Lcom/google/ads/interactivemedia/v3/internal/aio;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ahx;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aed;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ahx;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aed;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final write(Lcom/google/ads/interactivemedia/v3/internal/aiq;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ahx;->b:Lcom/google/ads/interactivemedia/v3/internal/ahy;

    .line 5
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ahy;->b:Lcom/google/ads/interactivemedia/v3/internal/aeg;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aeg;->write(Lcom/google/ads/interactivemedia/v3/internal/aiq;Ljava/lang/Object;)V

    return-void
.end method
