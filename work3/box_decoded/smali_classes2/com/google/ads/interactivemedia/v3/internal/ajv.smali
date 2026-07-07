.class abstract Lcom/google/ads/interactivemedia/v3/internal/ajv;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/BaseManager;
.implements Lcom/google/ads/interactivemedia/v3/internal/akq;
.implements Lcom/google/ads/interactivemedia/v3/internal/als;


# instance fields
.field protected final a:Lcom/google/ads/interactivemedia/v3/internal/aks;

.field protected final b:Ljava/lang/String;

.field protected c:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

.field protected d:Lcom/google/ads/interactivemedia/v3/internal/aka;

.field protected e:Z

.field protected f:Lcom/google/ads/interactivemedia/v3/internal/alb;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/akc;

.field private final i:Landroid/content/Context;

.field private j:Lcom/google/ads/interactivemedia/v3/impl/data/c;

.field private k:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

.field private l:Lcom/google/ads/interactivemedia/v3/internal/aiv;

.field private m:Lcom/google/ads/interactivemedia/v3/internal/aky;

.field private n:Lcom/google/ads/interactivemedia/v3/internal/alt;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/aks;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/internal/aky;Landroid/content/Context;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->g:Ljava/util/List;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akc;

    .line 2
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/akc;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->h:Lcom/google/ads/interactivemedia/v3/internal/akc;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->i:Landroid/content/Context;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/g;

    .line 3
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/g;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->c:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aiv;

    .line 4
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/aiv;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/aks;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->l:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    .line 5
    invoke-virtual {v0, p6}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a(Z)V

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p4, p1}, Lcom/google/ads/interactivemedia/v3/internal/aky;->b(Ljava/lang/String;)V

    .line 7
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object p6

    invoke-virtual {p4, p6}, Lcom/google/ads/interactivemedia/v3/internal/aky;->a(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0, p4}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 9
    invoke-virtual {p0, p4}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 10
    check-cast p3, Lcom/google/ads/interactivemedia/v3/internal/aju;

    .line 11
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/aju;->b()Ljava/util/Set;

    move-result-object p6

    .line 12
    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;

    .line 13
    invoke-virtual {p4, v0}, Lcom/google/ads/interactivemedia/v3/internal/aky;->a(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/aju;->a(Lcom/google/ads/interactivemedia/v3/internal/ajt;)V

    .line 5
    :goto_1
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->m:Lcom/google/ads/interactivemedia/v3/internal/aky;

    .line 15
    invoke-virtual {p2, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Lcom/google/ads/interactivemedia/v3/internal/akq;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->l:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    .line 16
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->a()V

    .line 17
    invoke-static {p5}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 18
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/alt;

    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/alt;-><init>(Landroid/app/Application;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->n:Lcom/google/ads/interactivemedia/v3/internal/alt;

    .line 19
    invoke-virtual {p2, p0}, Lcom/google/ads/interactivemedia/v3/internal/alt;->a(Lcom/google/ads/interactivemedia/v3/internal/als;)V

    :cond_2
    return-void
.end method

.method private final b(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->k:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    .line 61
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method private final e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->c:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    .line 42
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->getFocusSkipButtonWhenAvailable()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aix;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 57
    invoke-direct {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aix;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 58
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->b(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aix;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 59
    invoke-direct {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aix;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    .line 60
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->b(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->h:Lcom/google/ads/interactivemedia/v3/internal/akc;

    .line 30
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/akc;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/akk;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 67
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akj;->adsManager:Lcom/google/ads/interactivemedia/v3/internal/akj;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->b:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V
    .locals 6

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/akp;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/akp;->b:Lcom/google/ads/interactivemedia/v3/impl/data/c;

    .line 43
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_7

    const/16 v3, 0x18

    if-eq v2, v3, :cond_7

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    const/16 v3, 0x14

    if-eq v2, v3, :cond_2

    const/16 v3, 0x15

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v1, :cond_0

    .line 49
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->j:Lcom/google/ads/interactivemedia/v3/impl/data/c;

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->e()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->b:Ljava/lang/String;

    .line 51
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->e()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->b:Ljava/lang/String;

    .line 45
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/akp;->e:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->k:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->j:Lcom/google/ads/interactivemedia/v3/impl/data/c;

    goto :goto_0

    .line 45
    :cond_3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->f:Lcom/google/ads/interactivemedia/v3/internal/alb;

    if-eqz v1, :cond_4

    .line 46
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/alb;->a()V

    :cond_4
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->l:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    .line 47
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->d()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->f:Lcom/google/ads/interactivemedia/v3/internal/alb;

    if-eqz v1, :cond_6

    .line 48
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/alb;->b()V

    :cond_6
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->l:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    .line 49
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->c()V

    goto :goto_0

    .line 54
    :cond_7
    :pswitch_2
    iput-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->k:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    .line 43
    :cond_8
    :goto_0
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/akp;->c:Ljava/util/Map;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aiy;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->j:Lcom/google/ads/interactivemedia/v3/impl/data/c;

    .line 52
    invoke-direct {v1, v0, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/aiy;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/api/Ad;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_9

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 53
    check-cast v5, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    .line 54
    invoke-interface {v5, v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;->onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    sget-object p1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-eq v0, p1, :cond_b

    sget-object p1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-ne v0, p1, :cond_a

    goto :goto_2

    :cond_a
    return-void

    :cond_b
    :goto_2
    iput-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->j:Lcom/google/ads/interactivemedia/v3/impl/data/c;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 62
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->c()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 63
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 64
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akj;->userInteraction:Lcom/google/ads/interactivemedia/v3/internal/akj;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/akk;->focusUiElement:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    :cond_0
    return-void
.end method

.method public addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->h:Lcom/google/ads/interactivemedia/v3/internal/akc;

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/akc;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method public addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->g:Ljava/util/List;

    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->m:Lcom/google/ads/interactivemedia/v3/internal/aky;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aky;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IMASDK"

    const-string v1, "OMID ad session ended on BaseManager destroy."

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->f:Lcom/google/ads/interactivemedia/v3/internal/alb;

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/alb;->b()V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->g:Ljava/util/List;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->h:Lcom/google/ads/interactivemedia/v3/internal/akc;

    .line 26
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akc;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->l:Lcom/google/ads/interactivemedia/v3/internal/aiv;

    .line 27
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aiv;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->b:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->j:Lcom/google/ads/interactivemedia/v3/impl/data/c;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->n:Lcom/google/ads/interactivemedia/v3/internal/alt;

    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/alt;->a()V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 55
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akj;->adsManager:Lcom/google/ads/interactivemedia/v3/internal/akj;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/akk;->appBackgrounding:Lcom/google/ads/interactivemedia/v3/internal/akk;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    return-void
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 56
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akj;->adsManager:Lcom/google/ads/interactivemedia/v3/internal/akj;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/akk;->appForegrounding:Lcom/google/ads/interactivemedia/v3/internal/akk;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    return-void
.end method

.method public focus()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Ljava/lang/String;)V

    return-void
.end method

.method public getAdProgressInfo()Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->k:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    return-object v0
.end method

.method public getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->j:Lcom/google/ads/interactivemedia/v3/impl/data/c;

    return-object v0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    return-void
.end method

.method public init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V
    .locals 5

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->c:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 33
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->c:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    .line 34
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/f;->builder(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)Lcom/google/ads/interactivemedia/v3/impl/data/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/e;->build()Lcom/google/ads/interactivemedia/v3/impl/data/f;

    move-result-object v0

    const-string v1, "adsRenderingSettings"

    .line 35
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->f:Lcom/google/ads/interactivemedia/v3/internal/alb;

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/alb;->c()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v0

    float-to-double v0, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x44

    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AdsManager.init -> Setting contentStartTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IMASDK"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "contentStartTime"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 41
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akj;->adsManager:Lcom/google/ads/interactivemedia/v3/internal/akj;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/akk;->init:Lcom/google/ads/interactivemedia/v3/internal/akk;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    return-void
.end method

.method public removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->h:Lcom/google/ads/interactivemedia/v3/internal/akc;

    .line 65
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/akc;->b(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method public removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->g:Ljava/util/List;

    .line 66
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
