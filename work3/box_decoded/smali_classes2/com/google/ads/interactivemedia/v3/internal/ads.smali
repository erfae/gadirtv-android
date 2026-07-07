.class public final Lcom/google/ads/interactivemedia/v3/internal/ads;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/internal/afe;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/adk;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/ads/interactivemedia/v3/internal/adt<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/aeh;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/aeh;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/afe;->a:Lcom/google/ads/interactivemedia/v3/internal/afe;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->a:Lcom/google/ads/interactivemedia/v3/internal/afe;

    .line 2
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/aee;->a:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->i:I

    .line 3
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/adj;->a:Lcom/google/ads/interactivemedia/v3/internal/adj;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->b:Lcom/google/ads/interactivemedia/v3/internal/adk;

    new-instance v0, Ljava/util/HashMap;

    .line 4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->e:Ljava/util/List;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->f:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/internal/adr;
    .locals 8

    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->d:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->d:Ljava/util/List;

    .line 9
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->e:Ljava/util/List;

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 13
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/adr;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->a:Lcom/google/ads/interactivemedia/v3/internal/afe;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->b:Lcom/google/ads/interactivemedia/v3/internal/adk;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->c:Ljava/util/Map;

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->i:I

    const/4 v4, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/adr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/afe;Lcom/google/ads/interactivemedia/v3/internal/adk;Ljava/util/Map;ZILjava/util/List;)V

    return-object v7
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/aeh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->d:Ljava/util/List;

    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/anh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->a:Lcom/google/ads/interactivemedia/v3/internal/afe;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/afe;->a(Lcom/google/ads/interactivemedia/v3/internal/anh;)Lcom/google/ads/interactivemedia/v3/internal/afe;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->a:Lcom/google/ads/interactivemedia/v3/internal/afe;

    return-void
.end method

.method public final a(Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3

    .line 15
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/aec;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    instance-of v2, p2, Lcom/google/ads/interactivemedia/v3/internal/adv;

    if-nez v2, :cond_1

    instance-of v2, p2, Lcom/google/ads/interactivemedia/v3/internal/adt;

    if-nez v2, :cond_1

    instance-of v2, p2, Lcom/google/ads/interactivemedia/v3/internal/aeg;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Z)V

    .line 16
    instance-of v1, p2, Lcom/google/ads/interactivemedia/v3/internal/adt;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->c:Ljava/util/Map;

    .line 17
    move-object v2, p2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/adt;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    .line 18
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/adv;

    if-eqz v0, :cond_4

    .line 19
    :cond_3
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/aim;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->d:Ljava/util/List;

    .line 20
    invoke-static {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/agv;->a(Lcom/google/ads/interactivemedia/v3/internal/aim;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aeh;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_4
    instance-of v0, p2, Lcom/google/ads/interactivemedia/v3/internal/aeg;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ads;->d:Ljava/util/List;

    .line 22
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/aim;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/aim;

    move-result-object p1

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/aeg;

    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aih;->a(Lcom/google/ads/interactivemedia/v3/internal/aim;Lcom/google/ads/interactivemedia/v3/internal/aeg;)Lcom/google/ads/interactivemedia/v3/internal/aeh;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method
