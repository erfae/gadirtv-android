.class public final Lcom/google/ads/interactivemedia/v3/internal/aks;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aku;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/akq;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/akn;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/ako;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/alh;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/akv;

.field private i:Z

.field private final j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/ads/interactivemedia/v3/internal/akl;",
            ">;"
        }
    .end annotation
.end field

.field private k:J

.field private final l:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

.field private final m:Ljava/lang/String;

.field private n:Lcom/google/ads/interactivemedia/v3/internal/akr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    .line 4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->f:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->i:Z

    new-instance v0, Ljava/util/ArrayDeque;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->j:Ljava/util/Queue;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->g:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->l:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akv;

    .line 8
    invoke-direct {v0, p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/akv;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/aku;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->h:Lcom/google/ads/interactivemedia/v3/internal/akv;

    .line 9
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "sdk_version"

    const-string v1, "a.3.20.1"

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 11
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getLanguage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "hl"

    invoke-virtual {p2, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/c;->a()Ljava/lang/String;

    move-result-object p3

    const-string v0, "omv"

    .line 12
    invoke-virtual {p2, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "app"

    .line 14
    invoke-virtual {p2, p3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    if-eqz p4, :cond_0

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/ads;

    .line 15
    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/ads;-><init>()V

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/ana;

    invoke-direct {p3}, Lcom/google/ads/interactivemedia/v3/internal/ana;-><init>()V

    invoke-virtual {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ads;->a(Lcom/google/ads/interactivemedia/v3/internal/aeh;)V

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/anh;

    invoke-direct {p3}, Lcom/google/ads/interactivemedia/v3/internal/anh;-><init>()V

    .line 16
    invoke-virtual {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ads;->a(Lcom/google/ads/interactivemedia/v3/internal/anh;)V

    .line 17
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/ads;->a()Lcom/google/ads/interactivemedia/v3/internal/adr;

    move-result-object p2

    .line 18
    invoke-virtual {p2, p4}, Lcom/google/ads/interactivemedia/v3/internal/adr;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "tcnfp"

    .line 19
    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->m:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aks;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->g:Landroid/content/Context;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Caused by: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/bd;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->e:Ljava/util/Map;

    .line 166
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/alh;

    if-nez v0, :cond_0

    .line 167
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x2c

    add-int/2addr p4, v0

    add-int/2addr p4, v1

    invoke-direct {v2, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "Received "

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " message: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for invalid session id: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Ljava/lang/String;)V

    return-void

    .line 168
    :cond_0
    invoke-interface {v0, p1, p2, p4}, Lcom/google/ads/interactivemedia/v3/internal/alh;->a(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/impl/data/bd;)V

    return-void
.end method

.method private static final a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/akk;)V
    .locals 3

    .line 179
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2b

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Illegal message type "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " received for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " channel"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final d()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->j:Ljava/util/Queue;

    .line 177
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->h:Lcom/google/ads/interactivemedia/v3/internal/akv;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->j:Ljava/util/Queue;

    .line 178
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/akl;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/akv;->a(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->k:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->h:Lcom/google/ads/interactivemedia/v3/internal/akv;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->m:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/akv;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->f:Ljava/util/Map;

    .line 23
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/akl;)V
    .locals 19

    move-object/from16 v6, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/akl;->c()Ljava/lang/Object;

    move-result-object v0

    .line 35
    move-object v7, v0

    check-cast v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/akl;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/akl;->b()Lcom/google/ads/interactivemedia/v3/internal/akk;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/akl;->a()Lcom/google/ads/interactivemedia/v3/internal/akj;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/akj;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akk;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v9, 0x18

    add-int/2addr v3, v9

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Received js message: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/ar;->Html:Lcom/google/ads/interactivemedia/v3/impl/data/ar;

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/akl;->a()Lcom/google/ads/interactivemedia/v3/internal/akj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/akj;->ordinal()I

    move-result v1

    const/4 v10, 0x0

    const/16 v2, 0x38

    const/4 v11, 0x1

    const/16 v3, 0x1e

    const-string v4, " for invalid session id: "

    packed-switch v1, :pswitch_data_0

    .line 164
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/akl;->a()Lcom/google/ads/interactivemedia/v3/internal/akj;

    move-result-object v0

    .line 165
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x19

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message channel: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->c(Ljava/lang/String;)V

    return-void

    .line 157
    :pswitch_1
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/akj;->videoDisplay2:Lcom/google/ads/interactivemedia/v3/internal/akj;

    .line 159
    invoke-direct {v6, v1, v0, v8, v7}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/bd;)V

    return-void

    :pswitch_2
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/akj;->videoDisplay1:Lcom/google/ads/interactivemedia/v3/internal/akj;

    .line 160
    invoke-direct {v6, v1, v0, v8, v7}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/bd;)V

    return-void

    :pswitch_3
    iget-object v1, v6, Lcom/google/ads/interactivemedia/v3/internal/aks;->e:Ljava/util/Map;

    .line 161
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/alh;

    if-eqz v1, :cond_0

    .line 162
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/alh;->e()V

    const-string v1, "Enabling legacy video display messaging on channel videoDisplay."

    .line 163
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/akj;->videoDisplay1:Lcom/google/ads/interactivemedia/v3/internal/akj;

    .line 164
    invoke-direct {v6, v1, v0, v8, v7}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/bd;)V

    return-void

    .line 140
    :pswitch_4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akk;->ordinal()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    goto/16 :goto_a

    :cond_1
    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/aks;->n:Lcom/google/ads/interactivemedia/v3/internal/akr;

    .line 141
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/akr;->b()V

    return-void

    :cond_2
    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/aks;->n:Lcom/google/ads/interactivemedia/v3/internal/akr;

    .line 142
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/akr;->a()V

    return-void

    .line 143
    :pswitch_5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akk;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_a

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_3

    const-string v1, "other"

    .line 158
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/akk;)V

    return-void

    .line 144
    :cond_3
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->ln:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->n:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->m:Ljava/lang/String;

    if-nez v1, :cond_4

    goto/16 :goto_1

    .line 146
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0xe

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "JsMessage ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->ln:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x44

    if-eq v1, v2, :cond_8

    const/16 v2, 0x45

    if-eq v1, v2, :cond_7

    const/16 v2, 0x49

    if-eq v1, v2, :cond_8

    const/16 v2, 0x53

    if-eq v1, v2, :cond_7

    const/16 v2, 0x56

    if-eq v1, v2, :cond_8

    const/16 v2, 0x57

    if-eq v1, v2, :cond_6

    .line 151
    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->ln:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unrecognized log level: "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 152
    :cond_5
    new-instance v1, Ljava/lang/String;

    .line 151
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Ljava/lang/String;)V

    .line 152
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Ljava/lang/String;)V

    return-void

    .line 148
    :cond_6
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Ljava/lang/String;)V

    return-void

    .line 149
    :cond_7
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->c(Ljava/lang/String;)V

    return-void

    .line 150
    :cond_8
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_9
    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v1, v3

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid logging message data: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->c(Ljava/lang/String;)V

    return-void

    .line 158
    :cond_a
    iput-boolean v11, v6, Lcom/google/ads/interactivemedia/v3/internal/aks;->i:Z

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, v6, Lcom/google/ads/interactivemedia/v3/internal/aks;->k:J

    new-instance v4, Ljava/util/HashMap;

    .line 154
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sub-long/2addr v0, v2

    .line 155
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "webViewLoadingTime"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/akj;->webViewLoaded:Lcom/google/ads/interactivemedia/v3/internal/akj;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akk;->csi:Lcom/google/ads/interactivemedia/v3/internal/akk;

    .line 156
    invoke-direct {v0, v1, v2, v8, v4}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    .line 157
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->d()V

    return-void

    .line 106
    :pswitch_6
    iget-object v1, v6, Lcom/google/ads/interactivemedia/v3/internal/aks;->f:Ljava/util/Map;

    .line 107
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/ads/interactivemedia/v3/internal/aju;

    iget-object v1, v6, Lcom/google/ads/interactivemedia/v3/internal/aks;->a:Ljava/util/Map;

    .line 108
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/akq;

    iget-object v3, v6, Lcom/google/ads/interactivemedia/v3/internal/aks;->e:Ljava/util/Map;

    .line 109
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/alh;

    if-eqz v9, :cond_15

    if-eqz v1, :cond_15

    if-nez v3, :cond_b

    goto/16 :goto_7

    .line 111
    :cond_b
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akk;->ordinal()I

    move-result v3

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_e

    const/16 v4, 0x23

    if-eq v3, v4, :cond_31

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_31

    if-eq v3, v2, :cond_d

    const/16 v2, 0x39

    if-eq v3, v2, :cond_c

    .line 135
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/akj;->displayContainer:Lcom/google/ads/interactivemedia/v3/internal/akj;

    .line 139
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/akj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/akk;)V

    return-void

    .line 112
    :cond_c
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a()V

    return-void

    .line 113
    :cond_d
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->resizeAndPositionVideo:Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;)V

    return-void

    :cond_e
    if-eqz v7, :cond_14

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->companions:Ljava/util/Map;

    if-nez v0, :cond_f

    goto/16 :goto_6

    .line 115
    :cond_f
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v13, Ljava/util/HashMap;

    .line 116
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v13, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 117
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/aju;->a()Ljava/util/Map;

    move-result-object v3

    .line 118
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    .line 119
    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;->getContainer()Landroid/view/ViewGroup;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 120
    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 121
    :cond_10
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v4, "Display requested for invalid companion slot."

    invoke-interface {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    goto :goto_2

    .line 122
    :cond_11
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/view/ViewGroup;

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->companions:Ljava/util/Map;

    .line 124
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/aju;->a()Ljava/util/Map;

    move-result-object v1

    .line 125
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    .line 126
    invoke-virtual {v15}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 127
    move-object v5, v0

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/ajw;

    .line 128
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/ajw;->a()Ljava/util/List;

    move-result-object v4

    .line 129
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->type()Lcom/google/ads/interactivemedia/v3/impl/data/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ar;->ordinal()I

    move-result v0

    if-eqz v0, :cond_12

    if-eq v0, v11, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    move-object v12, v5

    const/4 v2, 0x0

    goto :goto_5

    :cond_12
    move-object/from16 p1, v4

    move-object v12, v5

    goto :goto_4

    .line 130
    :cond_13
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/akh;

    move-object v0, v2

    move-object v11, v2

    move-object/from16 v2, p0

    move-object/from16 p1, v4

    move-object v4, v8

    move-object v12, v5

    move-object/from16 v5, p1

    .line 131
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/akh;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/aks;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/lang/String;Ljava/util/List;)V

    .line 132
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akf;

    invoke-direct {v0, v11}, Lcom/google/ads/interactivemedia/v3/internal/akf;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akh;)V

    new-array v1, v10, [Ljava/lang/Void;

    .line 133
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/akf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object v2, v11

    goto :goto_5

    .line 134
    :goto_4
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 135
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/ajz;

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v6, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/ajz;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/aks;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/util/List;)V

    .line 136
    :goto_5
    invoke-virtual {v2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v12, v8}, Lcom/google/ads/interactivemedia/v3/internal/ajw;->a(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v11, 0x1

    goto :goto_3

    .line 114
    :cond_14
    :goto_6
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Display companions message requires companions in data."

    invoke-interface {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_15
    :goto_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Received displayContainer message: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->c(Ljava/lang/String;)V

    return-void

    .line 37
    :pswitch_7
    iget-object v1, v6, Lcom/google/ads/interactivemedia/v3/internal/aks;->a:Ljava/util/Map;

    .line 38
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/akq;

    if-nez v1, :cond_16

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x33

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Received manager message: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Ljava/lang/String;)V

    return-void

    :cond_16
    if-eqz v7, :cond_17

    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->adData:Lcom/google/ads/interactivemedia/v3/impl/data/c;

    if-nez v2, :cond_18

    :cond_17
    const/4 v2, 0x0

    .line 40
    :cond_18
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akk;->ordinal()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_27

    const/16 v5, 0x10

    if-eq v4, v5, :cond_26

    const/16 v5, 0x12

    if-eq v4, v5, :cond_25

    if-eq v4, v9, :cond_23

    const/16 v5, 0x29

    if-eq v4, v5, :cond_21

    const/16 v5, 0x31

    if-eq v4, v5, :cond_20

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_1f

    const/16 v5, 0x42

    if-eq v4, v5, :cond_1e

    const/16 v5, 0x4a

    if-eq v4, v5, :cond_31

    const/16 v5, 0x14

    if-eq v4, v5, :cond_1d

    const/16 v5, 0x15

    if-eq v4, v5, :cond_1c

    if-eq v4, v3, :cond_1b

    const/16 v3, 0x1f

    if-eq v4, v3, :cond_1a

    const/16 v3, 0x24

    if-eq v4, v3, :cond_19

    const/16 v3, 0x25

    if-eq v4, v3, :cond_31

    const-string v3, "adBreakTime"

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    packed-switch v4, :pswitch_data_3

    packed-switch v4, :pswitch_data_4

    .line 83
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/akj;->adsManager:Lcom/google/ads/interactivemedia/v3/internal/akj;

    .line 89
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/akj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/akk;)V

    return-void

    .line 56
    :pswitch_8
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 57
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ICON_TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    :pswitch_9
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 58
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 66
    :pswitch_a
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 67
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 59
    :pswitch_b
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 60
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPABLE_STATE_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 67
    :pswitch_c
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 68
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    .line 69
    iget-wide v2, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->seekTime:D

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/akp;->f:D

    .line 70
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 56
    :pswitch_d
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->url:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->c(Ljava/lang/String;)V

    return-void

    .line 62
    :pswitch_e
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 63
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->MIDPOINT:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 84
    :pswitch_f
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 86
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOG:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    .line 87
    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->logData:Lcom/google/ads/interactivemedia/v3/impl/data/bc;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/data/bc;->constructMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/akp;->c:Ljava/util/Map;

    .line 88
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 52
    :pswitch_10
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 53
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PROGRESS:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/ajc;

    .line 54
    iget-wide v9, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->currentTime:D

    iget-wide v11, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->duration:D

    iget v13, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->adPosition:I

    iget v14, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->totalAds:I

    iget-wide v3, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->adBreakDuration:D

    iget-wide v7, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->adPeriodDuration:D

    move-wide/from16 v17, v7

    move-object v8, v2

    move-wide v15, v3

    invoke-direct/range {v8 .. v18}, Lcom/google/ads/interactivemedia/v3/internal/ajc;-><init>(DDIIDD)V

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/akp;->e:Lcom/google/ads/interactivemedia/v3/api/AdProgressInfo;

    .line 55
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 41
    :pswitch_11
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 42
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PERIOD_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    :pswitch_12
    const/4 v4, 0x0

    .line 40
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 41
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PERIOD_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    :pswitch_13
    const/4 v4, 0x0

    .line 50
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 51
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BUFFERING:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    .line 52
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 43
    :pswitch_14
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 44
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    :pswitch_15
    const/4 v4, 0x0

    .line 47
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 48
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_READY:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    .line 49
    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->adBreakTime:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/aou;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aou;

    move-result-object v2

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/akp;->c:Ljava/util/Map;

    .line 50
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    :pswitch_16
    const/4 v4, 0x0

    .line 44
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 45
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_FETCH_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    .line 46
    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->adBreakTime:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/aou;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/aou;

    move-result-object v2

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/akp;->c:Ljava/util/Map;

    .line 47
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 42
    :pswitch_17
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 43
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 58
    :cond_19
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 59
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ICON_FALLBACK_IMAGE_CLOSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 63
    :cond_1a
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 64
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->FIRST_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 84
    :cond_1b
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    iget v2, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->errorCode:I

    iget-object v3, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->errorMessage:Ljava/lang/String;

    iget-object v4, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->innerError:Ljava/lang/String;

    .line 85
    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-interface {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    return-void

    .line 78
    :cond_1c
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 79
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_RESUME_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    :cond_1d
    const/4 v3, 0x0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 80
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_PAUSE_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 61
    :cond_1e
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 62
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->THIRD_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 64
    :cond_1f
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 65
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->RESUMED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    :cond_20
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 66
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->PAUSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    :cond_21
    if-eqz v2, :cond_22

    .line 80
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 81
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOADED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    :cond_22
    const-string v0, "Ad loaded message requires adData"

    .line 82
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->c(Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Ad loaded message did not contain adData."

    invoke-interface {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_23
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 71
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CUEPOINTS_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    new-instance v2, Ljava/util/ArrayList;

    .line 72
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/akp;->d:Ljava/util/List;

    .line 73
    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->cuepoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/impl/data/at;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/akp;->d:Ljava/util/List;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/akb;

    .line 74
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/data/at;->start()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/data/at;->end()D

    move-result-wide v10

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/data/at;->played()Z

    move-result v12

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/akb;-><init>(DDZ)V

    .line 75
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 76
    :cond_24
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 77
    :cond_25
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 78
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 60
    :cond_26
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 61
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CLICKED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 76
    :cond_27
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akp;

    .line 77
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/akp;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akq;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 95
    :pswitch_18
    iget-object v1, v6, Lcom/google/ads/interactivemedia/v3/internal/aks;->d:Ljava/util/Map;

    .line 97
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/ako;

    if-nez v1, :cond_28

    .line 98
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x33

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Received request message: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->c(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_28
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akk;->ordinal()I

    move-result v2

    const/16 v4, 0xb

    if-eq v2, v4, :cond_2c

    if-eq v2, v3, :cond_2b

    const/16 v3, 0x41

    if-eq v2, v3, :cond_29

    .line 105
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/akj;->adsLoader:Lcom/google/ads/interactivemedia/v3/internal/akj;

    .line 106
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/akj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/akk;)V

    return-void

    .line 102
    :cond_29
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->streamId:Ljava/lang/String;

    iget-boolean v2, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->monitorAppLifecycle:Z

    invoke-interface {v1, v8, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/ako;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->streamId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stream initialized with streamId: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_2a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Ljava/lang/String;)V

    return-void

    .line 100
    :cond_2b
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    iget v2, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->errorCode:I

    iget-object v3, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->errorMessage:Ljava/lang/String;

    iget-object v4, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->innerError:Ljava/lang/String;

    .line 101
    invoke-static {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-interface {v1, v8, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ako;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    return-void

    :cond_2c
    if-nez v7, :cond_2d

    .line 104
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    invoke-interface {v1, v8, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/ako;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;)V

    return-void

    :cond_2d
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->adCuePoints:Ljava/util/List;

    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->internalCuePoints:Ljava/util/SortedSet;

    iget-boolean v3, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->monitorAppLifecycle:Z

    .line 105
    invoke-interface {v1, v8, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ako;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/SortedSet;Z)V

    return-void

    .line 88
    :pswitch_19
    iget-object v1, v6, Lcom/google/ads/interactivemedia/v3/internal/aks;->c:Ljava/util/Set;

    .line 90
    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, v6, Lcom/google/ads/interactivemedia/v3/internal/aks;->b:Ljava/util/Map;

    .line 91
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/akn;

    const-string v3, "Received monitor message: "

    if-nez v1, :cond_2e

    .line 92
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x33

    add-int/2addr v1, v2

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Ljava/lang/String;)V

    return-void

    :cond_2e
    if-nez v7, :cond_2f

    .line 93
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v1, v2

    add-int/2addr v1, v4

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for session id: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with no data"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Ljava/lang/String;)V

    return-void

    .line 94
    :cond_2f
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akk;->ordinal()I

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_30

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/akj;->activityMonitor:Lcom/google/ads/interactivemedia/v3/internal/akj;

    .line 96
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/akj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/akk;)V

    return-void

    :cond_30
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->queryId:Ljava/lang/String;

    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->eventId:Ljava/lang/String;

    .line 95
    invoke-interface {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/akn;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    :goto_a
    :pswitch_1a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_1a
        :pswitch_1a
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2b
        :pswitch_f
        :pswitch_e
        :pswitch_1a
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3c
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x46
        :pswitch_1a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/akn;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->b:Ljava/util/Map;

    .line 22
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ako;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->d:Ljava/util/Map;

    .line 24
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/akq;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->a:Ljava/util/Map;

    .line 25
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/akr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->n:Lcom/google/ads/interactivemedia/v3/internal/akr;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/alh;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->e:Ljava/util/Map;

    .line 26
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->b:Ljava/util/Map;

    .line 169
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->c:Ljava/util/Set;

    .line 170
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->h:Lcom/google/ads/interactivemedia/v3/internal/akv;

    .line 29
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akv;->a()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/akl;->a()Lcom/google/ads/interactivemedia/v3/internal/akj;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akj;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/akl;->b()Lcom/google/ads/interactivemedia/v3/internal/akk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/akk;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x17

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sending js message: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->j:Ljava/util/Queue;

    .line 175
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->d()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->a:Ljava/util/Map;

    .line 171
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->f:Ljava/util/Map;

    .line 172
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->e:Ljava/util/Map;

    .line 173
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final c()Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aks;->l:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 31
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akm;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/akm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aks;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 32
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/akm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
