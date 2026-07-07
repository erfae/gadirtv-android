.class public final Lcom/google/ads/interactivemedia/v3/internal/agl;
.super Lcom/google/ads/interactivemedia/v3/internal/aeg;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/internal/aeg<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/ads/interactivemedia/v3/internal/aeh;


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/internal/adr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/agk;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/agk;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/agl;->a:Lcom/google/ads/interactivemedia/v3/internal/aeh;

    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/adr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aeg;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/agl;->b:Lcom/google/ads/interactivemedia/v3/internal/adr;

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

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->p()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_6

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x5

    if-eq v1, v0, :cond_3

    const/4 v0, 0x6

    if-eq v1, v0, :cond_2

    const/4 v0, 0x7

    if-eq v1, v0, :cond_1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->i()V

    return-object v2

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->h()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->j()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->g()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/afp;

    .line 7
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/afp;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->c()V

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/agl;->read(Lcom/google/ads/interactivemedia/v3/internal/aio;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->d()V

    return-object v0

    .line 1
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a()V

    .line 14
    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/agl;->read(Lcom/google/ads/interactivemedia/v3/internal/aio;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b()V

    return-object v0

    .line 2
    :cond_8
    throw v2
.end method

.method public final write(Lcom/google/ads/interactivemedia/v3/internal/aiq;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->f()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agl;->b:Lcom/google/ads/interactivemedia/v3/internal/adr;

    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/aeg;

    move-result-object v0

    .line 20
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/agl;

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->c()V

    .line 22
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->e()V

    return-void

    .line 23
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aeg;->write(Lcom/google/ads/interactivemedia/v3/internal/aiq;Ljava/lang/Object;)V

    return-void
.end method
