.class public final Lcom/google/ads/interactivemedia/v3/internal/dc;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private final d:J

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/qj;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;

.field private g:Lcom/google/ads/interactivemedia/v3/internal/dh;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->d:J

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->e:Ljava/util/List;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->f:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/dg;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/dc;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->d:J

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;->c:Lcom/google/ads/interactivemedia/v3/internal/dh;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->g:Lcom/google/ads/interactivemedia/v3/internal/dh;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/dg;->b:Lcom/google/ads/interactivemedia/v3/internal/df;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/df;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/df;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->b:Landroid/net/Uri;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/df;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->e:Ljava/util/List;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/df;->f:Ljava/util/List;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->f:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/internal/dg;
    .locals 7

    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->b:Landroid/net/Uri;

    if-eqz v2, :cond_1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/df;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->c:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->e:Ljava/util/List;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->f:Ljava/util/List;

    move-object v1, v0

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/df;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/de;Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->b:Landroid/net/Uri;

    .line 7
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dg;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->a:Ljava/lang/String;

    .line 8
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/dd;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-direct {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/dd;-><init>(J)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->g:Lcom/google/ads/interactivemedia/v3/internal/dh;

    if-nez v4, :cond_2

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/dh;

    invoke-direct {v4}, Lcom/google/ads/interactivemedia/v3/internal/dh;-><init>()V

    .line 9
    :cond_2
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/dg;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/dd;Lcom/google/ads/interactivemedia/v3/internal/df;Lcom/google/ads/interactivemedia/v3/internal/dh;)V

    return-object v1
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->b:Landroid/net/Uri;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/qj;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 12
    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->e:Ljava/util/List;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dc;->c:Ljava/lang/String;

    return-void
.end method
