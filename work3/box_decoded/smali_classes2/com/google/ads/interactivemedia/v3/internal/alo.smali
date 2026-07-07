.class public final Lcom/google/ads/interactivemedia/v3/internal/alo;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;
.implements Lcom/google/ads/interactivemedia/v3/api/player/ResizablePlayer;
.implements Lcom/google/ads/interactivemedia/v3/internal/alp;
.implements Lcom/google/ads/interactivemedia/v3/internal/alk;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ej;

.field private final b:Landroid/view/SurfaceView;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/yz;

.field private final d:Landroid/widget/FrameLayout;

.field private final e:Landroid/view/ViewGroup;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/all;

.field private final i:Lcom/google/ads/interactivemedia/v3/internal/alm;

.field private final j:Lcom/google/ads/interactivemedia/v3/internal/aln;

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/google/ads/interactivemedia/v3/internal/zy;

.field private m:Lcom/google/ads/interactivemedia/v3/internal/ra;

.field private n:Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 7

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/alr;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/alr;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/yn;

    .line 2
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->a:Lcom/google/ads/interactivemedia/v3/internal/yh;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/xy;

    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/internal/xy;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/yn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/yh;Lcom/google/ads/interactivemedia/v3/internal/xy;)V

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bp;->a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/alr;Lcom/google/ads/interactivemedia/v3/internal/yw;)Lcom/google/ads/interactivemedia/v3/internal/ej;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->k:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->e:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zy;

    const-string v2, "IMA SDK ExoPlayer"

    .line 5
    invoke-static {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->l:Lcom/google/ads/interactivemedia/v3/internal/zy;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->f:Ljava/util/List;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/alm;

    .line 7
    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/alm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/alo;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->i:Lcom/google/ads/interactivemedia/v3/internal/alm;

    .line 8
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/app;->a()Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->g:Ljava/util/HashSet;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/aln;

    .line 9
    invoke-direct {v3, p0}, Lcom/google/ads/interactivemedia/v3/internal/aln;-><init>(Lcom/google/ads/interactivemedia/v3/internal/alo;)V

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->j:Lcom/google/ads/interactivemedia/v3/internal/aln;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/all;

    .line 10
    invoke-direct {v4, p0}, Lcom/google/ads/interactivemedia/v3/internal/all;-><init>(Lcom/google/ads/interactivemedia/v3/internal/alk;)V

    iput-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->h:Lcom/google/ads/interactivemedia/v3/internal/all;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ex;)V

    .line 12
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/acx;)V

    new-instance v1, Landroid/widget/FrameLayout;

    .line 13
    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->d:Landroid/widget/FrameLayout;

    const/high16 v3, -0x1000000

    .line 14
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/yz;

    .line 15
    invoke-direct {v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/yz;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->c:Lcom/google/ads/interactivemedia/v3/internal/yz;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    .line 16
    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 17
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/yz;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->o:I

    .line 18
    new-instance v4, Landroid/view/SurfaceView;

    invoke-direct {v4, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->b:Landroid/view/SurfaceView;

    .line 19
    invoke-virtual {v4, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    if-nez v4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Landroid/view/SurfaceHolder;)V

    .line 21
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/yz;->addView(Landroid/view/View;)V

    .line 22
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 23
    invoke-direct {p1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final a(I)Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->k:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->k:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/alo;I)Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/alo;->a(I)Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/alo;)Lcom/google/ads/interactivemedia/v3/internal/yz;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->c:Lcom/google/ads/interactivemedia/v3/internal/yz;

    return-object p0
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 4

    .line 25
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/sm;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->l:Lcom/google/ads/interactivemedia/v3/internal/zy;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/alq;

    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/internal/alq;-><init>()V

    .line 28
    invoke-direct {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/sm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zn;Lcom/google/ads/interactivemedia/v3/internal/ij;)V

    .line 29
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/sm;->a(Landroid/net/Uri;)Lcom/google/ads/interactivemedia/v3/internal/sn;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    .line 36
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/wj;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->l:Lcom/google/ads/interactivemedia/v3/internal/zy;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/vx;

    .line 30
    invoke-direct {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/vx;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zn;)V

    invoke-direct {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/wj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/vx;)V

    .line 31
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/wj;->a(Landroid/net/Uri;)Lcom/google/ads/interactivemedia/v3/internal/wk;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_2
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/uh;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->l:Lcom/google/ads/interactivemedia/v3/internal/zy;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/ur;

    .line 32
    invoke-direct {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/ur;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zn;)V

    invoke-direct {v1, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/uh;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ur;Lcom/google/ads/interactivemedia/v3/internal/zn;)V

    .line 33
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/uh;->a(Landroid/net/Uri;)Lcom/google/ads/interactivemedia/v3/internal/uo;

    move-result-object v0

    .line 29
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->m:Lcom/google/ads/interactivemedia/v3/internal/ra;

    .line 34
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(Lcom/google/ads/interactivemedia/v3/internal/rq;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->k:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final b(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->k:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/alo;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->g:Ljava/util/HashSet;

    return-object p0
.end method

.method private final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->d:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->b:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->m:Lcom/google/ads/interactivemedia/v3/internal/ra;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->h:Lcom/google/ads/interactivemedia/v3/internal/all;

    .line 84
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/all;->b()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->o:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 85
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 86
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->f()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->g:Ljava/util/HashSet;

    .line 87
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private final c()Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 44
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->i()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->m:Lcom/google/ads/interactivemedia/v3/internal/ra;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/alo;->a(I)Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/internal/alo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/internal/alo;)Lcom/google/ads/interactivemedia/v3/internal/ra;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->m:Lcom/google/ads/interactivemedia/v3/internal/ra;

    return-object p0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/internal/alo;)Lcom/google/ads/interactivemedia/v3/internal/ej;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    return-object p0
.end method

.method static synthetic f(Lcom/google/ads/interactivemedia/v3/internal/alo;)Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/alo;->c()Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 104
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/alo;->c()Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/alo;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 106
    check-cast v5, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 107
    invoke-interface {v5, v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onAdProgress(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->f:Ljava/util/List;

    .line 24
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 39
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 40
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 41
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 42
    :cond_1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0

    .line 43
    :cond_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->k()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ej;->e()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    return-object v0
.end method

.method public final getVolume()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public final loadAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->m:Lcom/google/ads/interactivemedia/v3/internal/ra;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->n:Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 47
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getPodIndex()I

    move-result v0

    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getPodIndex()I

    move-result p2

    if-ne v0, p2, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/alo;->a(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called loadAd on an ad from a different ad break."

    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 50
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 51
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bi;->a(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->k:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ra;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/ads/interactivemedia/v3/internal/rq;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 54
    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/internal/sw;-><init>()V

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/ra;-><init>(Lcom/google/ads/interactivemedia/v3/internal/sw;[Lcom/google/ads/interactivemedia/v3/internal/rq;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->m:Lcom/google/ads/interactivemedia/v3/internal/ra;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->n:Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    .line 55
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/alo;->a(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 56
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Z)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->m:Lcom/google/ads/interactivemedia/v3/internal/ra;

    .line 57
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/rq;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->o:I

    return-void
.end method

.method public final pauseAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->h:Lcom/google/ads/interactivemedia/v3/internal/all;

    .line 58
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/all;->b()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->o:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 60
    check-cast v3, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 61
    invoke-interface {v3, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPause(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final playAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->m:Lcom/google/ads/interactivemedia/v3/internal/ra;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->k:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 63
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->b:Landroid/view/SurfaceView;

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->o:I

    add-int/lit8 v2, v0, -0x1

    if-eqz v0, :cond_6

    if-eqz v2, :cond_5

    const/4 v0, 0x3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-eq v2, v0, :cond_0

    goto :goto_2

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v1, v4, :cond_4

    .line 66
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 68
    check-cast v5, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 69
    invoke-interface {v5, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onResume(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 70
    check-cast v5, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 71
    invoke-interface {v5, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPlay(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->b:Landroid/view/SurfaceView;

    .line 72
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Landroid/view/SurfaceHolder;)V

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->h:Lcom/google/ads/interactivemedia/v3/internal/all;

    .line 73
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/all;->a()V

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->o:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 74
    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Z)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call to playAd when player state is not LOADED."

    .line 67
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/4 p1, 0x0

    .line 66
    throw p1

    .line 62
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call to playAd without appropriate call to loadAd first."

    .line 63
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final release()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/alo;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->i:Lcom/google/ads/interactivemedia/v3/internal/alm;

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b(Lcom/google/ads/interactivemedia/v3/internal/ex;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->j:Lcom/google/ads/interactivemedia/v3/internal/aln;

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b(Lcom/google/ads/interactivemedia/v3/internal/acx;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 78
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->d()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->h:Lcom/google/ads/interactivemedia/v3/internal/all;

    .line 79
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/all;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->d:Landroid/widget/FrameLayout;

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->f:Ljava/util/List;

    .line 81
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final resize(IIII)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->e:Landroid/view/ViewGroup;

    .line 88
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->e:Landroid/view/ViewGroup;

    .line 89
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v0, p1

    sub-int/2addr v0, p3

    sub-int/2addr v1, p2

    sub-int/2addr v1, p4

    .line 90
    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->c:Lcom/google/ads/interactivemedia/v3/internal/yz;

    .line 91
    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/yz;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final stopAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->m:Lcom/google/ads/interactivemedia/v3/internal/ra;

    if-nez v0, :cond_0

    const-string p1, "IMASDK"

    const-string v0, "Attempting to stop when no current ad source"

    .line 92
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->g:Ljava/util/HashSet;

    .line 93
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/alo;->b(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 95
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->i()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 96
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/alo;->b(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)I

    move-result p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->k:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/alo;->b()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 98
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->i()I

    move-result p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    add-int/lit8 p1, p1, 0x1

    .line 99
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(I)V

    return-void

    :cond_2
    if-le v0, v1, :cond_3

    .line 101
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/alo;->b(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->m:Lcom/google/ads/interactivemedia/v3/internal/ra;

    .line 102
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ra;->b(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alo;->k:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
