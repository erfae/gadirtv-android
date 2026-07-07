.class final Lcom/google/ads/interactivemedia/v3/internal/aje;
.super Landroid/os/AsyncTask;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/google/ads/interactivemedia/v3/internal/ajf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

.field private final b:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ajj;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->b:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->i(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->j(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/amr;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/amr;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->e(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/amq;->f(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/internal/amq;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/amr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/amk;)V

    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->a(Lcom/google/ads/interactivemedia/v3/internal/ajj;Lcom/google/ads/interactivemedia/v3/internal/amr;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->j(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/amr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/amr;->a(Landroid/net/Uri;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->j(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/amr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->e(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/amr;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/ams; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/alu;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->e(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/alu;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->a(Lcom/google/ads/interactivemedia/v3/internal/ajj;Lcom/google/ads/interactivemedia/v3/internal/alu;)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ajf;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->k(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/impl/data/as;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ajf;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/as;)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 11

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/ajf;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->b:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/ajf;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdTagUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->b:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->l(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/google/ads/interactivemedia/v3/internal/ajf;->b:Lcom/google/ads/interactivemedia/v3/impl/data/as;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->m(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->n(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v6

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->o(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/ajh;

    move-result-object v7

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->e(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->p(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    move-result v8

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->q(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/alu;

    move-result-object v9

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->d(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v10

    invoke-static/range {v2 .. v10}, Lcom/google/ads/interactivemedia/v3/impl/data/bb;->create(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/as;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/internal/ajh;ZLcom/google/ads/interactivemedia/v3/internal/alu;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)Lcom/google/ads/interactivemedia/v3/impl/data/bb;

    move-result-object p1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/akj;->adsLoader:Lcom/google/ads/interactivemedia/v3/internal/akj;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akk;->requestAds:Lcom/google/ads/interactivemedia/v3/internal/akk;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aje;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->c(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/aks;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    return-void
.end method
