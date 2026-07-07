.class final Lcom/google/ads/interactivemedia/v3/internal/ahq;
.super Lcom/google/ads/interactivemedia/v3/internal/aeg;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/internal/aeg<",
        "Lcom/google/ads/interactivemedia/v3/internal/adw;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aeg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/aio;)Lcom/google/ads/interactivemedia/v3/internal/adw;
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

    .line 12
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->i()V

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ady;->a:Lcom/google/ads/interactivemedia/v3/internal/ady;

    return-object p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 14
    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aeb;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->h()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aeb;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->g()Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aeb;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/afh;

    invoke-direct {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/afh;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aeb;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 13
    :cond_3
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aeb;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->g()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aeb;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 11
    :cond_4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/adz;

    .line 2
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/adz;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->c()V

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ahq;->a(Lcom/google/ads/interactivemedia/v3/internal/aio;)Lcom/google/ads/interactivemedia/v3/internal/adw;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/adz;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/adw;)V

    goto :goto_0

    .line 6
    :cond_5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->d()V

    return-object v0

    .line 1
    :cond_6
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/adu;

    .line 7
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/adu;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->a()V

    .line 9
    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ahq;->a(Lcom/google/ads/interactivemedia/v3/internal/aio;)Lcom/google/ads/interactivemedia/v3/internal/adw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/adu;->a(Lcom/google/ads/interactivemedia/v3/internal/adw;)V

    goto :goto_1

    .line 11
    :cond_7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aio;->b()V

    return-object v0

    :cond_8
    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/aiq;Lcom/google/ads/interactivemedia/v3/internal/adw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 18
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/ady;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 20
    :cond_0
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/aeb;

    if-eqz v0, :cond_3

    .line 35
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/aeb;

    .line 36
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aeb;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aeb;->e()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->a(Ljava/lang/Number;)V

    return-void

    .line 38
    :cond_1
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aeb;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aeb;->c()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->a(Z)V

    return-void

    .line 40
    :cond_2
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aeb;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->b(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_3
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/adu;

    if-eqz v0, :cond_5

    .line 30
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->b()V

    .line 31
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/adu;

    .line 32
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/adu;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/adw;

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ahq;->a(Lcom/google/ads/interactivemedia/v3/internal/aiq;Lcom/google/ads/interactivemedia/v3/internal/adw;)V

    goto :goto_0

    .line 34
    :cond_4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->d()V

    return-void

    .line 22
    :cond_5
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/adz;

    if-eqz v0, :cond_7

    .line 23
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->c()V

    .line 24
    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/adz;

    .line 25
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/adz;->a()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->a(Ljava/lang/String;)V

    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/adw;

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ahq;->a(Lcom/google/ads/interactivemedia/v3/internal/aiq;Lcom/google/ads/interactivemedia/v3/internal/adw;)V

    goto :goto_1

    .line 28
    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->e()V

    return-void

    .line 27
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->f()V

    return-void
.end method

.method public final bridge synthetic read(Lcom/google/ads/interactivemedia/v3/internal/aio;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ahq;->a(Lcom/google/ads/interactivemedia/v3/internal/aio;)Lcom/google/ads/interactivemedia/v3/internal/adw;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic write(Lcom/google/ads/interactivemedia/v3/internal/aiq;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/adw;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ahq;->a(Lcom/google/ads/interactivemedia/v3/internal/aiq;Lcom/google/ads/interactivemedia/v3/internal/adw;)V

    return-void
.end method
