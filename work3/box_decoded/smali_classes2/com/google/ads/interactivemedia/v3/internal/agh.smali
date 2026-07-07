.class public final Lcom/google/ads/interactivemedia/v3/internal/agh;
.super Lcom/google/ads/interactivemedia/v3/internal/aiq;
.source "IMASDK"


# static fields
.field private static final a:Ljava/io/Writer;

.field private static final b:Lcom/google/ads/interactivemedia/v3/internal/aeb;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/adw;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/adw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/agg;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/agg;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/agh;->a:Ljava/io/Writer;

    .line 2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aeb;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aeb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/agh;->b:Lcom/google/ads/interactivemedia/v3/internal/aeb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/agh;->a:Ljava/io/Writer;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aiq;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->c:Ljava/util/List;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ady;->a:Lcom/google/ads/interactivemedia/v3/internal/ady;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->e:Lcom/google/ads/interactivemedia/v3/internal/adw;

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/adw;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 35
    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/internal/ady;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/agh;->j()Lcom/google/ads/interactivemedia/v3/internal/adw;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/adz;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->d:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/adz;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/adw;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->d:Ljava/lang/String;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->c:Ljava/util/List;

    .line 38
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->e:Lcom/google/ads/interactivemedia/v3/internal/adw;

    return-void

    .line 39
    :cond_3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/agh;->j()Lcom/google/ads/interactivemedia/v3/internal/adw;

    move-result-object v0

    .line 40
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/adu;

    if-eqz v1, :cond_4

    .line 41
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/adu;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/adu;->a(Lcom/google/ads/interactivemedia/v3/internal/adw;)V

    return-void

    .line 40
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private final j()Lcom/google/ads/interactivemedia/v3/internal/adw;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->c:Ljava/util/List;

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/adw;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/internal/adw;
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->c:Ljava/util/List;

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->e:Lcom/google/ads/interactivemedia/v3/internal/adw;

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aeb;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aeb;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/agh;->a(Lcom/google/ads/interactivemedia/v3/internal/adw;)V

    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->f()V

    return-void

    .line 45
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aeb;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aeb;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/agh;->a(Lcom/google/ads/interactivemedia/v3/internal/adw;)V

    return-void
.end method

.method public final a(Ljava/lang/Number;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->f()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aeb;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aeb;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/agh;->a(Lcom/google/ads/interactivemedia/v3/internal/adw;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->c:Ljava/util/List;

    .line 28
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 30
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/agh;->j()Lcom/google/ads/interactivemedia/v3/internal/adw;

    move-result-object v0

    .line 31
    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/internal/adz;

    if-eqz v0, :cond_0

    .line 32
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->d:Ljava/lang/String;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aeb;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aeb;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/agh;->a(Lcom/google/ads/interactivemedia/v3/internal/adw;)V

    return-void
.end method

.method public final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/adu;

    .line 5
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/adu;-><init>()V

    .line 6
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/agh;->a(Lcom/google/ads/interactivemedia/v3/internal/adw;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->c:Ljava/util/List;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aiq;->f()V

    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aeb;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aeb;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/agh;->a(Lcom/google/ads/interactivemedia/v3/internal/adw;)V

    return-void
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/adz;

    .line 8
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/adz;-><init>()V

    .line 9
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/agh;->a(Lcom/google/ads/interactivemedia/v3/internal/adw;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->c:Ljava/util/List;

    .line 10
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->c:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->c:Ljava/util/List;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/agh;->b:Lcom/google/ads/interactivemedia/v3/internal/aeb;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    .line 12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->c:Ljava/util/List;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 16
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/agh;->j()Lcom/google/ads/interactivemedia/v3/internal/adw;

    move-result-object v0

    .line 17
    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/internal/adu;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->c:Ljava/util/List;

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->c:Ljava/util/List;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 22
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/agh;->j()Lcom/google/ads/interactivemedia/v3/internal/adw;

    move-result-object v0

    .line 23
    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/internal/adz;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/agh;->c:Ljava/util/List;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ady;->a:Lcom/google/ads/interactivemedia/v3/internal/ady;

    .line 33
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/agh;->a(Lcom/google/ads/interactivemedia/v3/internal/adw;)V

    return-void
.end method

.method public final flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
