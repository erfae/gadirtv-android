.class public final Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer$Companion;
.super Ljava/lang/Object;
.source "TvMediaSynchronizer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTvMediaSynchronizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TvMediaSynchronizer.kt\ncom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1819#2,2:82\n*E\n*S KotlinDebug\n*F\n+ 1 TvMediaSynchronizer.kt\ncom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer$Companion\n*L\n73#1,2:82\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "synchronize",
        "",
        "context",
        "Landroid/content/Context;",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized synchronize(Landroid/content/Context;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvMediaSynchronizer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Starting synchronization work"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v0, Lcom/magoware/magoware/webtv/data/AppDatabase;->Companion:Lcom/magoware/magoware/webtv/data/AppDatabase$Companion;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/data/AppDatabase$Companion;->getDbInstance(Landroid/content/Context;)Lcom/magoware/magoware/webtv/data/AppDatabase;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/data/AppDatabase;->tvMediaCollections()Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;->findAll()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 73
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 82
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;

    .line 74
    sget-object v3, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvLauncherUtils;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvLauncherUtils$Companion;

    .line 75
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/data/AppDatabase;->tvMediaMetadata()Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    move-result-object v2

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;->findByCollection(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v4, p1

    .line 74
    invoke-static/range {v3 .. v9}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvLauncherUtils$Companion;->upsertChannel$default(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/TvLauncherUtils$Companion;Landroid/content/Context;Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;Ljava/util/List;ZILjava/lang/Object;)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 78
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
