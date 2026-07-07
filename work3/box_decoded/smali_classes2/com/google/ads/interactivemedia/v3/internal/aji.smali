.class final Lcom/google/ads/interactivemedia/v3/internal/aji;
.super Landroid/os/AsyncTask;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/ads/interactivemedia/v3/internal/ajg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

.field private final b:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ajj;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->b:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->i(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->j(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/amr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amr;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->e(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/amq;->f(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/internal/amq;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/amr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/amk;)V

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->a(Lcom/google/ads/interactivemedia/v3/internal/ajj;Lcom/google/ads/interactivemedia/v3/internal/amr;)V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->j(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/amr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/amr;->a()Lcom/google/ads/interactivemedia/v3/internal/amk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->e(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/amk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/alu;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->e(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/alu;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->a(Lcom/google/ads/interactivemedia/v3/internal/ajj;Lcom/google/ads/interactivemedia/v3/internal/alu;)V

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ajg;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->k(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/impl/data/as;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ajg;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/as;)V

    return-object p1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 10

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/ajg;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->b:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->l(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/ajg;->b:Lcom/google/ads/interactivemedia/v3/impl/data/as;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->m(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->n(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->o(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/ajh;

    move-result-object v5

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->e(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->p(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    move-result v6

    iget-object v7, p1, Lcom/google/ads/interactivemedia/v3/internal/ajg;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->q(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/alu;

    move-result-object v8

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->h(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/impl/data/bb;->createFromStreamRequest(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/as;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/internal/ajh;ZLjava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/alu;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)Lcom/google/ads/interactivemedia/v3/impl/data/bb;

    move-result-object p1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/akj;->adsLoader:Lcom/google/ads/interactivemedia/v3/internal/akj;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akk;->requestStream:Lcom/google/ads/interactivemedia/v3/internal/akk;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aji;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->c(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/aks;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    return-void
.end method
