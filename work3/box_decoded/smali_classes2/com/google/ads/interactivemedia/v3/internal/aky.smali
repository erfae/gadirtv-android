.class public final Lcom/google/ads/interactivemedia/v3/internal/aky;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;
.implements Lcom/google/ads/interactivemedia/v3/internal/ajt;
.implements Lcom/google/ads/interactivemedia/v3/internal/akr;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/aks;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/akx;

.field private final c:Landroid/content/Context;

.field private d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Lcom/google/ads/interactivemedia/v3/internal/e;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/aks;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akx;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/akx;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->g:Z

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->h:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->b:Lcom/google/ads/interactivemedia/v3/internal/akx;

    new-instance p1, Ljava/util/HashSet;

    .line 1
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->f:Ljava/util/Set;

    return-void
.end method

.method private final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 29
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/bh;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/be;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/be;->friendlyObstructions(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/impl/data/be;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/be;->build()Lcom/google/ads/interactivemedia/v3/impl/data/bh;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 31
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akj;->omid:Lcom/google/ads/interactivemedia/v3/internal/akj;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/akk;->registerFriendlyObstructions:Lcom/google/ads/interactivemedia/v3/internal/akk;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->c:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/c;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->g:Z

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->d:Landroid/view/View;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->f:Ljava/util/Set;

    .line 22
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->f:Ljava/util/Set;

    .line 23
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->j:Lcom/google/ads/interactivemedia/v3/internal/e;

    if-nez v0, :cond_1

    return-void

    .line 24
    :cond_1
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getView()Landroid/view/View;

    move-result-object v1

    .line 25
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getPurpose()Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;->getOmidPurpose()Lcom/google/ads/interactivemedia/v3/internal/k;

    move-result-object v2

    .line 26
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getDetailedReason()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/e;->a(Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/k;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 28
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aky;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->i:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->g:Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->e:Ljava/lang/String;

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->j:Lcom/google/ads/interactivemedia/v3/internal/e;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/e;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->j:Lcom/google/ads/interactivemedia/v3/internal/e;

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->f:Ljava/util/Set;

    .line 32
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->j:Lcom/google/ads/interactivemedia/v3/internal/e;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/e;->c()V

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/aky;->a(Ljava/util/List;)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->h:Z

    return-void
.end method

.method public final onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 0

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->g:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->j:Lcom/google/ads/interactivemedia/v3/internal/e;

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/e;->b()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->j:Lcom/google/ads/interactivemedia/v3/internal/e;

    :cond_1
    :goto_0
    return-void
.end method

.method public final onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 6

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->g:Z

    if-eqz v0, :cond_5

    .line 5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/16 v0, 0xe

    if-eq p1, v0, :cond_4

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->g:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->j:Lcom/google/ads/interactivemedia/v3/internal/e;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->d:Landroid/view/View;

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/j;->a:Lcom/google/ads/interactivemedia/v3/internal/j;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/l;->a:Lcom/google/ads/interactivemedia/v3/internal/l;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/m;->b:Lcom/google/ads/interactivemedia/v3/internal/m;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/m;->b:Lcom/google/ads/interactivemedia/v3/internal/m;

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/f;->a(Lcom/google/ads/interactivemedia/v3/internal/j;Lcom/google/ads/interactivemedia/v3/internal/l;Lcom/google/ads/interactivemedia/v3/internal/m;Lcom/google/ads/interactivemedia/v3/internal/m;)Lcom/google/ads/interactivemedia/v3/internal/f;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/n;->c()Lcom/google/ads/interactivemedia/v3/internal/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 9
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->i:Ljava/lang/String;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->h:Z

    if-eq v3, v4, :cond_2

    const-string v3, "false"

    goto :goto_0

    :cond_2
    const-string v3, "true"

    .line 10
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x7

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "{ssai:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/g;->a(Lcom/google/ads/interactivemedia/v3/internal/n;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/g;

    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/e;->a(Lcom/google/ads/interactivemedia/v3/internal/f;Lcom/google/ads/interactivemedia/v3/internal/g;)Lcom/google/ads/interactivemedia/v3/internal/e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->j:Lcom/google/ads/interactivemedia/v3/internal/e;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->d:Landroid/view/View;

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/e;->a(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->f:Ljava/util/Set;

    .line 14
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->j:Lcom/google/ads/interactivemedia/v3/internal/e;

    .line 15
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getView()Landroid/view/View;

    move-result-object v2

    .line 16
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getPurpose()Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;->getOmidPurpose()Lcom/google/ads/interactivemedia/v3/internal/k;

    move-result-object v3

    .line 17
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;->getDetailedReason()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/e;->a(Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/k;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->f:Ljava/util/Set;

    .line 19
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aky;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aky;->j:Lcom/google/ads/interactivemedia/v3/internal/e;

    .line 20
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/e;->a()V

    return-void

    .line 21
    :cond_4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aky;->c()Z

    :cond_5
    :goto_2
    return-void
.end method
