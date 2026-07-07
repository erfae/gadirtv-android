.class final Lcom/google/ads/interactivemedia/v3/internal/apg;
.super Lcom/google/ads/interactivemedia/v3/internal/aoz;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/aoz<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/ads/interactivemedia/v3/internal/aou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aou<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient b:[Ljava/lang/Object;

.field private final transient c:I

.field private final transient d:I


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/aou;[Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aou<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aoz;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/apg;->a:Lcom/google/ads/interactivemedia/v3/internal/aou;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/apg;->b:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/apg;->c:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/apg;->d:I

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/apg;)I
    .locals 0

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/apg;->d:I

    return p0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/apg;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/apg;->b:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/internal/apg;)I
    .locals 0

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/apg;->c:I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a([Ljava/lang/Object;)I
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aol;->e()Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aol;->a([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final a()Lcom/google/ads/interactivemedia/v3/internal/apr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/apr<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aol;->e()Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->h()Lcom/google/ads/interactivemedia/v3/internal/aps;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 2
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/apg;->a:Lcom/google/ads/interactivemedia/v3/internal/aou;

    .line 6
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/aou;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final h()Lcom/google/ads/interactivemedia/v3/internal/aop;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/apf;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/apf;-><init>(Lcom/google/ads/interactivemedia/v3/internal/apg;)V

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/apg;->a()Lcom/google/ads/interactivemedia/v3/internal/apr;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/apg;->d:I

    return v0
.end method
