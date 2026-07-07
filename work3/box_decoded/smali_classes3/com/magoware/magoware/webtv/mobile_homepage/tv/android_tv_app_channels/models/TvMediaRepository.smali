.class public final Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;
.super Landroidx/lifecycle/ViewModel;
.source "TvMediaRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTvMediaRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TvMediaRepository.kt\ncom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,133:1\n29#2:134\n29#2:135\n29#2:136\n29#2:137\n29#2:138\n29#2:139\n29#2:140\n29#2:141\n29#2:142\n29#2:143\n*E\n*S KotlinDebug\n*F\n+ 1 TvMediaRepository.kt\ncom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository\n*L\n32#1:134\n33#1:135\n52#1:136\n53#1:137\n72#1:138\n73#1:139\n91#1:140\n92#1:141\n110#1:142\n111#1:143\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0014\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nJ\u0014\u0010\u000c\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\r0\nJ\u0014\u0010\u000e\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\nJ\u0014\u0010\u0010\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00110\nJ\u0014\u0010\u0012\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00130\nJ\u0006\u0010\u0014\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;",
        "Landroidx/lifecycle/ViewModel;",
        "collectionsDao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;",
        "metadataDAO",
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;)V",
        "saveComingNextInfoForAndroidTv",
        "",
        "item",
        "Lcom/magoware/magoware/webtv/api/ResponseObject;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;",
        "saveLiveTvChannels",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;",
        "savePausedContent",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;",
        "saveTrendingInfoForAndroidTv",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;",
        "saveVod",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;",
        "truncateDatabaseInfo",
        "Companion",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final ATV_COMING_NEXT_ID:Ljava/lang/String; = "comingnext"

.field public static final ATV_LIVE_TV_CHANNELS_ID:Ljava/lang/String; = "livetv"

.field public static final ATV_PAUSED_CONTENT_ID:Ljava/lang/String; = "pausedcontent"

.field public static final ATV_TRENDING_ID:Ljava/lang/String; = "trending"

.field public static final ATV_VOD_ID:Ljava/lang/String; = "videoondemand"

.field public static final Companion:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository$Companion;


# instance fields
.field private final collectionsDao:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

.field private final metadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->Companion:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "collectionsDao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataDAO"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->collectionsDao:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->metadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    return-void
.end method

.method public static final synthetic access$getCollectionsDao$p(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->collectionsDao:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

    return-object p0
.end method

.method public static final synthetic access$getMetadataDAO$p(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->metadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    return-object p0
.end method


# virtual methods
.method public final saveComingNextInfoForAndroidTv(Lcom/magoware/magoware/webtv/api/ResponseObject;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/api/ResponseObject<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "item"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->collectionsDao:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;

    .line 62
    new-instance v12, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;

    const-string v6, "comingnext"

    const-string v7, "Coming Next"

    const-string v8, "Coming Next"

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    aput-object v12, v4, v5

    invoke-interface {v1, v4}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;->insert([Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;)V

    .line 64
    iget-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->metadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    const-string v4, "comingnext"

    invoke-interface {v1, v4}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;->deleteByCollection(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/api/ResponseObject;->getResponse_object()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;

    .line 66
    iget-object v4, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->metadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    new-array v6, v3, [Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;

    new-instance v29, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;

    move-object/from16 v7, v29

    .line 67
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelEpgData()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 68
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 70
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelEpgData()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v9}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 71
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getTitle()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 72
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelEpgData()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v9}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 138
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object v12, v9

    const-string v3, "Uri.parse(this)"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelEpgData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v21, v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x78fe0

    const/16 v28, 0x0

    const-string v9, "comingnext"

    .line 66
    invoke-direct/range {v7 .. v28}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;IZZILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v29, v6, v5

    invoke-interface {v4, v6}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;->insert([Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public final saveLiveTvChannels(Lcom/magoware/magoware/webtv/api/ResponseObject;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/api/ResponseObject<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "item"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->collectionsDao:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;

    .line 42
    new-instance v12, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;

    const-string v6, "livetv"

    const-string v7, "Tv Channels"

    const-string v8, "Tv Channels"

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    aput-object v12, v4, v5

    invoke-interface {v1, v4}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;->insert([Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;)V

    .line 44
    iget-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->metadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    const-string v4, "livetv"

    invoke-interface {v1, v4}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;->deleteByCollection(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/api/ResponseObject;->getResponse_object()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;

    .line 46
    iget-object v4, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->metadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    new-array v6, v3, [Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;

    new-instance v29, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;

    move-object/from16 v7, v29

    .line 47
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 49
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;->getChannelNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 50
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 51
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;->getTitle()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 52
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 136
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object v12, v9

    const-string v3, "Uri.parse(this)"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v21, v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x78fe0

    const/16 v28, 0x0

    const-string v9, "livetv"

    .line 46
    invoke-direct/range {v7 .. v28}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;IZZILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v29, v6, v5

    invoke-interface {v4, v6}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;->insert([Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final savePausedContent(Lcom/magoware/magoware/webtv/api/ResponseObject;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/api/ResponseObject<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "item"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->collectionsDao:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;

    .line 101
    new-instance v12, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;

    const-string v6, "pausedcontent"

    const-string v7, "Continue Watching"

    const-string v8, "VOD"

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    aput-object v12, v4, v5

    invoke-interface {v1, v4}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;->insert([Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;)V

    .line 103
    iget-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->metadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    const-string v4, "pausedcontent"

    invoke-interface {v1, v4}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;->deleteByCollection(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/api/ResponseObject;->getResponse_object()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;

    .line 105
    iget-object v4, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->metadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    new-array v6, v3, [Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;

    new-instance v29, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;

    move-object/from16 v7, v29

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "continue"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 108
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 109
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 110
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 142
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object v12, v9

    const-string v15, "Uri.parse(this)"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    move-object v3, v15

    move-object v15, v9

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 111
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->getBackdropPath()Ljava/lang/String;

    move-result-object v9

    .line 143
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v21, v9

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->getResumePosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v22, 0x1

    const v27, 0x39fe0

    const/16 v28, 0x0

    const-string v9, "pausedcontent"

    .line 105
    invoke-direct/range {v7 .. v28}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;IZZILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v29, v6, v5

    invoke-interface {v4, v6}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;->insert([Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final saveTrendingInfoForAndroidTv(Lcom/magoware/magoware/webtv/api/ResponseObject;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/api/ResponseObject<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "item"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->collectionsDao:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;

    .line 22
    new-instance v12, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;

    const-string v6, "trending"

    const-string v7, "Live Now"

    const-string v8, "Live Now"

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    aput-object v12, v4, v5

    invoke-interface {v1, v4}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;->insert([Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;)V

    .line 24
    iget-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->metadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    const-string v4, "trending"

    invoke-interface {v1, v4}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;->deleteByCollection(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/api/ResponseObject;->getResponse_object()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;

    .line 26
    iget-object v4, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->metadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    new-array v6, v3, [Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;

    new-instance v29, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;

    move-object/from16 v7, v29

    .line 27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "live"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;->getChannelId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 29
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;->getChannelNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 30
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;->getChannelEpgData()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v9}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 31
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;->getTitle()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 32
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;->getChannelEpgData()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v9}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 134
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object v12, v9

    const-string v3, "Uri.parse(this)"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;->getChannelEpgData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v21, v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x78fe0

    const/16 v28, 0x0

    const-string v9, "trending"

    .line 26
    invoke-direct/range {v7 .. v28}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;IZZILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v29, v6, v5

    invoke-interface {v4, v6}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;->insert([Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public final saveVod(Lcom/magoware/magoware/webtv/api/ResponseObject;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/api/ResponseObject<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "item"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->collectionsDao:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;

    .line 82
    new-instance v12, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;

    const-string v6, "videoondemand"

    const-string v7, "VOD"

    const-string v8, "VOD"

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    aput-object v12, v4, v5

    invoke-interface {v1, v4}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;->insert([Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollection;)V

    .line 84
    iget-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->metadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    const-string v4, "videoondemand"

    invoke-interface {v1, v4}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;->deleteByCollection(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/magoware/magoware/webtv/api/ResponseObject;->getResponse_object()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;

    .line 86
    iget-object v4, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->metadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    new-array v6, v3, [Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;

    new-instance v29, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;

    move-object/from16 v7, v29

    .line 87
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 89
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 90
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 91
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 140
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object v12, v9

    const-string v15, "Uri.parse(this)"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    move-object v3, v15

    move-object v15, v9

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 92
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->getPosterPath()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v21, v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v22, 0x4

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x79fe0

    const/16 v28, 0x0

    const-string v9, "videoondemand"

    .line 86
    invoke-direct/range {v7 .. v28}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Landroid/net/Uri;IZZILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v29, v6, v5

    invoke-interface {v4, v6}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;->insert([Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadata;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final truncateDatabaseInfo()V
    .locals 6

    .line 120
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository$truncateDatabaseInfo$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository$truncateDatabaseInfo$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
