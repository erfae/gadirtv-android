.class public final Lcom/google/ads/interactivemedia/v3/internal/ajj;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsLoader;


# instance fields
.field a:Lcom/google/ads/interactivemedia/v3/internal/ako;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/aks;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/akc;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/api/AdsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/api/StreamRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/aky;

.field private i:Lcom/google/ads/interactivemedia/v3/internal/amr;

.field private final j:Ljava/lang/Object;

.field private k:Lcom/google/ads/interactivemedia/v3/internal/alu;

.field private final l:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

.field private final m:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

.field private final n:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

.field private final o:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V
    .locals 7

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 1
    invoke-direct {v1, p1, p2, p3, p5}, Lcom/google/ads/interactivemedia/v3/internal/aks;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ajj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aks;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V
    .locals 7

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 3
    invoke-direct {v1, p1, p2, p3, p5}, Lcom/google/ads/interactivemedia/v3/internal/aks;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ajj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aks;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a()V

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/aks;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ajd;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/ajd;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ajj;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->a:Lcom/google/ads/interactivemedia/v3/internal/ako;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akc;

    .line 6
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/akc;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->d:Lcom/google/ads/interactivemedia/v3/internal/akc;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->e:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->g:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->j:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b:Lcom/google/ads/interactivemedia/v3/internal/aks;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->c:Landroid/content/Context;

    if-nez p3, :cond_0

    .line 10
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->l:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->m:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->o:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->n:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/aky;

    .line 11
    invoke-direct {p3, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aky;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aks;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->h:Lcom/google/ads/interactivemedia/v3/internal/aky;

    .line 12
    invoke-virtual {p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Lcom/google/ads/interactivemedia/v3/internal/akr;)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->f:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ajj;Lcom/google/ads/interactivemedia/v3/internal/alu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->k:Lcom/google/ads/interactivemedia/v3/internal/alu;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ajj;Lcom/google/ads/interactivemedia/v3/internal/amr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->i:Lcom/google/ads/interactivemedia/v3/internal/amr;

    return-void
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/aky;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->h:Lcom/google/ads/interactivemedia/v3/internal/aky;

    return-object p0
.end method

.method private final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->m:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;->ignoreStrictModeFalsePositives()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 21
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 22
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    .line 19
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/aks;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b:Lcom/google/ads/interactivemedia/v3/internal/aks;

    return-object p0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->o:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    return-object p0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/akc;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->d:Lcom/google/ads/interactivemedia/v3/internal/akc;

    return-object p0
.end method

.method static synthetic g(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->g:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic h(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->n:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    return-object p0
.end method

.method static synthetic i(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->j:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic j(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/amr;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->i:Lcom/google/ads/interactivemedia/v3/internal/amr;

    return-object p0
.end method

.method static synthetic k(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/impl/data/as;
    .locals 6

    const-string v0, "IABTCF_gdprApplies"

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    const-string v2, "IABTCF_TCString"

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "IABUSPrivacy_String"

    invoke-interface {p0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "IABTCF_AddtlConsent"

    invoke-interface {p0, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0, v4}, Lcom/google/ads/interactivemedia/v3/impl/data/as;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/as;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "Failed to read TCF Consent settings from SharedPreferences."

    invoke-static {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v1
.end method

.method static synthetic l(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "3.20.1"

    aput-object v2, v0, v1

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "android%s:%s:%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->c:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const-string v1, "android:0"

    if-eqz v0, :cond_0

    const-string p0, "Host application doesn\'t have ACCESS_NETWORK_STATE permission"

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->c:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "android:%d:%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method static synthetic n(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->l:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    return-object p0
.end method

.method static synthetic o(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/ajh;
    .locals 3

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "market://details?id=com.google.ads.interactivemedia.v3"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ajh;->create(ILjava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ajh;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic p(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->m:Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    return-object p0
.end method

.method static synthetic q(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/alu;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->k:Lcom/google/ads/interactivemedia/v3/internal/alu;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 26
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a()V

    return-void
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 16
    check-cast v3, Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;

    .line 17
    invoke-interface {v3, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;->onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->d:Lcom/google/ads/interactivemedia/v3/internal/akc;

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/akc;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method public final addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->e:Ljava/util/List;

    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final contentComplete()V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 15
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akj;->adsLoader:Lcom/google/ads/interactivemedia/v3/internal/akj;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/akk;->contentComplete:Lcom/google/ads/interactivemedia/v3/internal/akk;

    const-string v4, "*"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    return-void
.end method

.method public final getSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->l:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    return-object v0
.end method

.method public final removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->d:Lcom/google/ads/interactivemedia/v3/internal/akc;

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/akc;->b(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method public final removeAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->e:Ljava/util/List;

    .line 28
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final requestAds(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)V
    .locals 5

    .line 29
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->d:Lcom/google/ads/interactivemedia/v3/internal/akc;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aix;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 30
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v4, "AdsRequest cannot be null."

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aix;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akc;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->o:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->d:Lcom/google/ads/interactivemedia/v3/internal/akc;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aix;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 31
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v4, "Ad display container must be provided."

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aix;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akc;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void

    .line 32
    :cond_1
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->d:Lcom/google/ads/interactivemedia/v3/internal/akc;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aix;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 33
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v4, "Ad display container must have a UI container."

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aix;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akc;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void

    .line 34
    :cond_2
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdTagUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 35
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdsResponse()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 42
    :cond_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->d:Lcom/google/ads/interactivemedia/v3/internal/akc;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aix;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 43
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v4, "Ad tag url must non-null and non empty."

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aix;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akc;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void

    .line 35
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->o:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 36
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->o:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->c:Landroid/content/Context;

    .line 37
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createSdkOwnedPlayer(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v2

    .line 38
    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->setPlayer(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)V

    :cond_5
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->f:Ljava/util/Map;

    .line 39
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b:Lcom/google/ads/interactivemedia/v3/internal/aks;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->a:Lcom/google/ads/interactivemedia/v3/internal/ako;

    .line 40
    invoke-virtual {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Lcom/google/ads/interactivemedia/v3/internal/ako;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b:Lcom/google/ads/interactivemedia/v3/internal/aks;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->o:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 41
    invoke-virtual {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aje;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aje;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ajj;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdTagUrl()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aje;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final requestStream(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;)Ljava/lang/String;
    .locals 6

    .line 44
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->d:Lcom/google/ads/interactivemedia/v3/internal/akc;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aix;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 45
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v5, "StreamRequest cannot be null."

    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aix;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/akc;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->n:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->d:Lcom/google/ads/interactivemedia/v3/internal/akc;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aix;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 46
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v5, "Stream display container must be provided."

    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aix;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/akc;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->d:Lcom/google/ads/interactivemedia/v3/internal/akc;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aix;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 48
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v5, "Stream requests must specify a player."

    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aix;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/akc;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->g:Ljava/util/Map;

    .line 49
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b:Lcom/google/ads/interactivemedia/v3/internal/aks;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->a:Lcom/google/ads/interactivemedia/v3/internal/ako;

    .line 50
    invoke-virtual {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Lcom/google/ads/interactivemedia/v3/internal/ako;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b:Lcom/google/ads/interactivemedia/v3/internal/aks;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ajj;->n:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    .line 51
    invoke-virtual {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/aji;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aji;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ajj;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/aji;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-object v0
.end method
