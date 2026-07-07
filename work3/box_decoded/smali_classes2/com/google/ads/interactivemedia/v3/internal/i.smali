.class public final Lcom/google/ads/interactivemedia/v3/internal/i;
.super Lcom/google/ads/interactivemedia/v3/internal/e;
.source "IMASDK"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/internal/g;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/s;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/ads/interactivemedia/v3/internal/ac;

.field private e:Z

.field private f:Z

.field private final g:Ljava/lang/String;

.field private h:Lcom/google/ads/interactivemedia/v3/internal/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[a-zA-Z0-9 ]+$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/i;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/f;Lcom/google/ads/interactivemedia/v3/internal/g;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->e:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->f:Z

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->b:Lcom/google/ads/interactivemedia/v3/internal/g;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/i;->b(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/g;->g()Lcom/google/ads/interactivemedia/v3/internal/h;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/h;->a:Lcom/google/ads/interactivemedia/v3/internal/h;

    if-eq v1, v2, :cond_1

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/g;->g()Lcom/google/ads/interactivemedia/v3/internal/h;

    move-result-object v1

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/h;->c:Lcom/google/ads/interactivemedia/v3/internal/h;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/af;

    .line 7
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/g;->c()Ljava/util/Map;

    move-result-object p2

    .line 8
    invoke-direct {v1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/af;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->d:Lcom/google/ads/interactivemedia/v3/internal/ac;

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ad;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/g;->d()Landroid/webkit/WebView;

    move-result-object p2

    .line 6
    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/ad;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->d:Lcom/google/ads/interactivemedia/v3/internal/ac;

    :goto_1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->d:Lcom/google/ads/interactivemedia/v3/internal/ac;

    .line 9
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/ac;->a()V

    .line 10
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/p;->a()Lcom/google/ads/interactivemedia/v3/internal/p;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/ads/interactivemedia/v3/internal/p;->a(Lcom/google/ads/interactivemedia/v3/internal/i;)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->d:Lcom/google/ads/interactivemedia/v3/internal/ac;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/v;->a()Lcom/google/ads/interactivemedia/v3/internal/v;

    move-result-object v0

    .line 11
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/ac;->c()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/f;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/v;->a(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method private final b(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ax;

    .line 35
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ax;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->h:Lcom/google/ads/interactivemedia/v3/internal/ax;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->e:Z

    .line 36
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/p;->a()Lcom/google/ads/interactivemedia/v3/internal/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/p;->b(Lcom/google/ads/interactivemedia/v3/internal/i;)V

    .line 37
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/w;->a()Lcom/google/ads/interactivemedia/v3/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/w;->d()F

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->d:Lcom/google/ads/interactivemedia/v3/internal/ac;

    .line 38
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ac;->a(F)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->d:Lcom/google/ads/interactivemedia/v3/internal/ac;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->b:Lcom/google/ads/interactivemedia/v3/internal/g;

    .line 39
    invoke-virtual {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ac;->a(Lcom/google/ads/interactivemedia/v3/internal/i;Lcom/google/ads/interactivemedia/v3/internal/g;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AdView is null"

    .line 25
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/i;->g()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    .line 27
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/i;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->d:Lcom/google/ads/interactivemedia/v3/internal/ac;

    .line 28
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ac;->e()V

    .line 29
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/p;->a()Lcom/google/ads/interactivemedia/v3/internal/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/p;->b()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 30
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/i;

    if-eq v1, p0, :cond_2

    .line 32
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/i;->g()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 33
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/i;->h:Lcom/google/ads/interactivemedia/v3/internal/ax;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ax;->clear()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/k;Ljava/lang/String;)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->f:Z

    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    if-eqz p3, :cond_1

    .line 12
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/i;->a:Ljava/util/regex/Pattern;

    .line 13
    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FriendlyObstruction has improperly formatted detailed reason"

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_2
    if-ge v2, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 14
    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/s;

    add-int/lit8 v2, v2, 0x1

    .line 15
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/s;->d()Lcom/google/ads/interactivemedia/v3/internal/ax;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/ax;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->c:Ljava/util/List;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/s;

    .line 16
    invoke-direct {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/s;-><init>(Landroid/view/View;Lcom/google/ads/interactivemedia/v3/internal/k;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FriendlyObstruction is null"

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->h:Lcom/google/ads/interactivemedia/v3/internal/ax;

    .line 19
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ax;->clear()V

    .line 20
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/i;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->f:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->d:Lcom/google/ads/interactivemedia/v3/internal/ac;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/v;->a()Lcom/google/ads/interactivemedia/v3/internal/v;

    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ac;->c()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/v;->a(Landroid/webkit/WebView;)V

    .line 22
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/p;->a()Lcom/google/ads/interactivemedia/v3/internal/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/p;->c(Lcom/google/ads/interactivemedia/v3/internal/i;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->d:Lcom/google/ads/interactivemedia/v3/internal/ac;

    .line 23
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ac;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->d:Lcom/google/ads/interactivemedia/v3/internal/ac;

    return-void
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->c:Ljava/util/List;

    .line 34
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->c:Ljava/util/List;

    return-object v0
.end method

.method public final e()Lcom/google/ads/interactivemedia/v3/internal/ac;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->d:Lcom/google/ads/interactivemedia/v3/internal/ac;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->h:Lcom/google/ads/interactivemedia/v3/internal/ax;

    .line 24
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ax;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/i;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
