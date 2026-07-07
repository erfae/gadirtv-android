.class final Lcom/google/ads/interactivemedia/v3/internal/agn;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z

.field final c:Z

.field final synthetic d:Ljava/lang/reflect/Field;

.field final synthetic e:Z

.field final synthetic f:Lcom/google/ads/interactivemedia/v3/internal/aeg;

.field final synthetic g:Lcom/google/ads/interactivemedia/v3/internal/adr;

.field final synthetic h:Lcom/google/ads/interactivemedia/v3/internal/aim;

.field final synthetic i:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->b:Z

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->c:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/ads/interactivemedia/v3/internal/aeg;Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aim;Z)V
    .locals 0

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->d:Ljava/lang/reflect/Field;

    iput-boolean p5, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->e:Z

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->f:Lcom/google/ads/interactivemedia/v3/internal/aeg;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->g:Lcom/google/ads/interactivemedia/v3/internal/adr;

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->h:Lcom/google/ads/interactivemedia/v3/internal/aim;

    iput-boolean p9, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->i:Z

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/agn;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/ads/interactivemedia/v3/internal/aio;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->f:Lcom/google/ads/interactivemedia/v3/internal/aeg;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aeg;->read(Lcom/google/ads/interactivemedia/v3/internal/aio;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->i:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->d:Ljava/lang/reflect/Field;

    .line 3
    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method a(Lcom/google/ads/interactivemedia/v3/internal/aiq;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->d:Ljava/lang/reflect/Field;

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->f:Lcom/google/ads/interactivemedia/v3/internal/aeg;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/agw;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->g:Lcom/google/ads/interactivemedia/v3/internal/adr;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->f:Lcom/google/ads/interactivemedia/v3/internal/aeg;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->h:Lcom/google/ads/interactivemedia/v3/internal/aim;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/aim;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 5
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/agw;-><init>(Lcom/google/ads/interactivemedia/v3/internal/adr;Lcom/google/ads/interactivemedia/v3/internal/aeg;Ljava/lang/reflect/Type;)V

    .line 6
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aeg;->write(Lcom/google/ads/interactivemedia/v3/internal/aiq;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agn;->d:Ljava/lang/reflect/Field;

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
