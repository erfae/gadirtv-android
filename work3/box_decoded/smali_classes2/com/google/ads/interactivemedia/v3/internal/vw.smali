.class public final Lcom/google/ads/interactivemedia/v3/internal/vw;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final b:Lcom/google/ads/interactivemedia/v3/internal/ir;


# instance fields
.field final a:Lcom/google/ads/interactivemedia/v3/internal/ih;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/acf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ir;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/ir;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/vw;->b:Lcom/google/ads/interactivemedia/v3/internal/ir;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ih;Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/acf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/vw;->a:Lcom/google/ads/interactivemedia/v3/internal/ih;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/vw;->c:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/vw;->d:Lcom/google/ads/interactivemedia/v3/internal/acf;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vw;->a:Lcom/google/ads/interactivemedia/v3/internal/ih;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ih;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vw;->a:Lcom/google/ads/interactivemedia/v3/internal/ih;

    .line 2
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/lz;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/lv;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/lx;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vw;->a:Lcom/google/ads/interactivemedia/v3/internal/ih;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/vw;->b:Lcom/google/ads/interactivemedia/v3/internal/ir;

    .line 4
    invoke-interface {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ih;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vw;->a:Lcom/google/ads/interactivemedia/v3/internal/ih;

    .line 3
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/nh;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Lcom/google/ads/interactivemedia/v3/internal/vw;
    .locals 4

    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/vw;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vw;->a:Lcom/google/ads/interactivemedia/v3/internal/ih;

    .line 6
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/xa;

    if-eqz v1, :cond_0

    .line 7
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/xa;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/vw;->c:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/cz;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/vw;->d:Lcom/google/ads/interactivemedia/v3/internal/acf;

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/xa;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/acf;)V

    goto :goto_0

    .line 8
    :cond_0
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/lz;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/lz;

    .line 9
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/lz;-><init>()V

    goto :goto_0

    .line 10
    :cond_1
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/lv;

    if-eqz v1, :cond_2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/lv;

    .line 11
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/lv;-><init>()V

    goto :goto_0

    .line 12
    :cond_2
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/lx;

    if-eqz v1, :cond_3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/lx;

    .line 13
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/lx;-><init>()V

    goto :goto_0

    .line 14
    :cond_3
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/internal/jz;

    if-eqz v1, :cond_4

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jz;

    .line 15
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/jz;-><init>()V

    .line 7
    :goto_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/vw;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/vw;->c:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/vw;->d:Lcom/google/ads/interactivemedia/v3/internal/acf;

    .line 16
    invoke-direct {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/vw;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ih;Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/acf;)V

    return-object v1

    .line 15
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unexpected extractor type for recreation: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
