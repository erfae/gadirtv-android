.class final Lcom/google/ads/interactivemedia/v3/internal/afd;
.super Lcom/google/ads/interactivemedia/v3/internal/aeg;
.source "IMASDK"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/internal/adr;

.field final synthetic d:Lcom/google/ads/interactivemedia/v3/internal/aim;

.field final synthetic e:Lcom/google/ads/interactivemedia/v3/internal/afe;

.field private f:Lcom/google/ads/interactivemedia/v3/internal/aeg;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/afe;ZZLcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/afd;->e:Lcom/google/ads/interactivemedia/v3/internal/afe;

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/afd;->a:Z

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/afd;->b:Z

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/afd;->c:Lcom/google/ads/interactivemedia/v3/internal/adr;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/afd;->d:Lcom/google/ads/interactivemedia/v3/internal/aim;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aeg;-><init>()V

    return-void
.end method

.method private final a()Lcom/google/ads/interactivemedia/v3/internal/aeg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/aeg;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afd;->f:Lcom/google/ads/interactivemedia/v3/internal/aeg;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afd;->c:Lcom/google/ads/interactivemedia/v3/internal/adr;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/afd;->e:Lcom/google/ads/interactivemedia/v3/internal/afe;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/afd;->d:Lcom/google/ads/interactivemedia/v3/internal/aim;

    .line 1
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Lcom/google/ads/interactivemedia/v3/internal/aeh;Lcom/google/ads/interactivemedia/v3/internal/aim;)Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afd;->f:Lcom/google/ads/interactivemedia/v3/internal/aeg;

    return-object v0
.end method


# virtual methods
.method public final read(Lcom/google/ads/interactivemedia/v3/internal/aio;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afd;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->m()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/afd;->a()Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aeg;->read(Lcom/google/ads/interactivemedia/v3/internal/aio;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final write(Lcom/google/ads/interactivemedia/v3/internal/aiq;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/afd;->b:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->f()V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/afd;->a()Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aeg;->write(Lcom/google/ads/interactivemedia/v3/internal/aiq;Ljava/lang/Object;)V

    return-void
.end method
