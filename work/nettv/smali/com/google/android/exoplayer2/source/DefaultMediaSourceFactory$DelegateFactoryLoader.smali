.class final Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DelegateFactoryLoader"
.end annotation


# instance fields
.field private dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mediaSourceFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceFactorySuppliers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            ">;>;"
        }
    .end annotation
.end field

.field private final supportedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$M749OSWtJ8xXVUD9V5IBAmkD3nQ(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$3(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Mur96n6tNkIpu1yUP_B7-HAXIgk(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$1(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZiYVZ346FdSpIQlsHmPy-P6lbuY(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$0(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mlQXrr_zH9gyNu5f9-E2sGgdxd4(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$2(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v5XdLnRjrD5Dbq2Zkel9T_x_xXM(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$4(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->supportedTypes:Ljava/util/Set;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    return-void
.end method

.method private ensureAllSuppliersAreLoaded()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    const/4 v0, 0x3

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    const/4 v0, 0x4

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    return-void
.end method

.method private static synthetic lambda$maybeLoadSupplier$0(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$maybeLoadSupplier$1(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$maybeLoadSupplier$2(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$maybeLoadSupplier$3(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->access$000(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$maybeLoadSupplier$4(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method private maybeLoadSupplier(I)Lcom/google/common/base/Supplier;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Supplier;

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;I)V

    move-object v1, v0

    goto :goto_1

    :cond_2
    const-string v2, "com.google.android.exoplayer2.source.rtsp.RtspMediaSource$Factory"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 7
    new-instance v2, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    move-object v1, v2

    goto :goto_1

    .line 8
    :cond_3
    const-class v4, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    .line 9
    invoke-virtual {v4, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 10
    new-instance v4, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v2, v3}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;I)V

    goto :goto_0

    :cond_4
    const-string v4, "com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory"

    .line 11
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 12
    invoke-virtual {v4, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 13
    new-instance v4, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v2, v3}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;I)V

    :goto_0
    move-object v1, v4

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    .line 14
    :cond_5
    const-class v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    .line 15
    invoke-virtual {v3, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 16
    new-instance v3, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v2, v4}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->supportedTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v1
.end method


# virtual methods
.method public getMediaSourceFactory(I)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    if-eqz v1, :cond_3

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getSupportedTypes()[I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->ensureAllSuppliersAreLoaded()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->supportedTypes:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method public setDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-eq p1, v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    goto :goto_0

    :cond_0
    return-void
.end method
