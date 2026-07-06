.class public Lcom/nettv/livestore/activities/MoviePlayerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MoviePlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/nettv/livestore/remote/GetSubtitleDataRequest$OnGetResponseListener;
.implements Lcom/nettv/livestore/remote/GetSubtitleLinkRequest$OnGetLinkModelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;
    }
.end annotation


# instance fields
.field public audio_position:I

.field public btn_audio:Landroid/widget/ImageButton;

.field public btn_back:Landroid/widget/ImageButton;

.field public btn_forward:Landroid/widget/ImageButton;

.field public btn_info:Landroid/widget/ImageButton;

.field public btn_play:Landroid/widget/ImageButton;

.field public btn_resolution:Landroid/widget/ImageButton;

.field public btn_rewind:Landroid/widget/ImageButton;

.field public btn_sub:Landroid/widget/ImageButton;

.field public cont_url:Ljava/lang/String;

.field public currentMovie:Lcom/nettv/livestore/models/MovieModel;

.field public dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field public description:Ljava/lang/String;

.field public duration:I

.field public errorDlgFragment:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;

.field public error_count:I

.field public exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

.field public handler:Landroid/os/Handler;

.field public hideInfoTicker:Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;

.field public hideResolutionTicker:Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;

.field public image_forward:Landroid/widget/ImageView;

.field public image_rewind:Landroid/widget/ImageView;

.field public infoDlgFragment:Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;

.field public last_position:J

.field public ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mUpdateTimeTask:Ljava/lang/Runnable;

.field public maxTime:I

.field public movie_name:Ljava/lang/String;

.field public playMediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field public player:Lcom/google/android/exoplayer2/ExoPlayer;

.field public playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public resolution:Ljava/lang/String;

.field public resolutionTime:I

.field public resumeDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

.field public seekBar:Landroid/widget/SeekBar;

.field public stream_id:Ljava/lang/String;

.field public subtitleView:Lcom/nettv/livestore/view/SubtitleView;

.field public subtitle_position:I

.field public tmdb_id:Ljava/lang/String;

.field public trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

.field public trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field public txt_end_time:Landroid/widget/TextView;

.field public txt_name:Landroid/widget/TextView;

.field public txt_resolution:Landroid/widget/TextView;

.field public txt_start_time:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$5doYz9ol4DbReHhLN1q3-rKjw40(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->lambda$listTimer$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$BVqnLuaOYnfuvtODznvoJfJQ0T8(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->lambda$resolutionTimer$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$GT2ng5XlCv82DANfFswU9wMmLKU(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/util/List;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->lambda$showOpenSubtitleDlgFragment$6(Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TZ-vSR2S71ASlDdLHXZzzvPs1xQ(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/util/List;Lcom/google/android/exoplayer2/source/TrackGroupArray;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->lambda$showSubTitleTrackDlgFragment$5(Ljava/util/List;Lcom/google/android/exoplayer2/source/TrackGroupArray;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$UwqpGFabZ_gzBLu78BAkrHY8rkg(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->lambda$releaseMediaPlayer$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$t3Ks-dZ85eDWhesGZ0cH4ZK1gWQ(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/util/List;Lcom/google/android/exoplayer2/source/TrackGroupArray;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->lambda$showAudioTrackDlgFragment$4(Ljava/util/List;Lcom/google/android/exoplayer2/source/TrackGroupArray;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$wJj6prjv1EM29b1J2As0C5V4FBs(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->lambda$releaseMediaPlayer$1()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->cont_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->movie_name:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->tmdb_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->stream_id:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->last_position:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->error_count:I

    iput v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->duration:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->subtitle_position:I

    iput v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->audio_position:I

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->handler:Landroid/os/Handler;

    const-string v0, "1920x1080"

    .line 7
    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->resolution:Ljava/lang/String;

    .line 8
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 9
    new-instance v0, Lcom/nettv/livestore/activities/MoviePlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity$2;-><init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$100(Lcom/nettv/livestore/activities/MoviePlayerActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->releaseMediaPlayer()V

    return-void
.end method

.method public static synthetic access$300(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->playVideo(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic access$400(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->listTimer()V

    return-void
.end method

.method public static synthetic access$500(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->showPlayErrorDlgFragment()V

    return-void
.end method

.method private applySubtitleSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;III)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>()V

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    if-ne p4, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p4, v2, v3

    invoke-direct {v1, p3, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    invoke-virtual {v0, p2, p1, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->clearSelectionOverrides(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 4
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method private createMediaSourceFactory()Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/nettv/livestore/utils/DemoUtil;->getHttpDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;->setDrmHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->setDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    move-result-object v0

    return-object v0
.end method

.method private downloadSubtitleFromApi(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleUserModel()Lcom/nettv/livestore/models/SubTitleUserModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleUserModel()Lcom/nettv/livestore/models/SubTitleUserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nettv/livestore/models/SubTitleUserModel;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/nettv/livestore/remote/GetSubtitleLinkRequest;

    const/16 v2, 0x3e8

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/remote/GetSubtitleLinkRequest;-><init>(Landroid/content/Context;I)V

    .line 4
    invoke-static {p1}, Lcom/nettv/livestore/utils/Security;->getFileData(I)Lorg/json/JSONObject;

    move-result-object p1

    sget-object v2, Lcom/nettv/livestore/apps/Constants;->SUBTITLE_DOWNLOAD:Ljava/lang/String;

    sget-object v3, Lcom/nettv/livestore/apps/Constants;->API_KEY:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/nettv/livestore/remote/GetSubtitleLinkRequest;->getResponse(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p0}, Lcom/nettv/livestore/remote/GetSubtitleLinkRequest;->setOnGetLinkModelListener(Lcom/nettv/livestore/remote/GetSubtitleLinkRequest$OnGetLinkModelListener;)V

    :cond_0
    return-void
.end method

.method private getControlButtonFocus()Z
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_rewind:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_forward:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private getFeatureButtonFocus()Z
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_info:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_audio:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_sub:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_resolution:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private getOpenSubtitleFromApi()V
    .locals 3

    .line 1
    new-instance v0, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;

    const/16 v1, 0x3e8

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nettv/livestore/apps/Constants;->SUBTITLE_SEARCH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->tmdb_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nettv/livestore/apps/Constants;->API_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->getResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/nettv/livestore/remote/GetSubtitleDataRequest;->setOnGetResponseListener(Lcom/nettv/livestore/remote/GetSubtitleDataRequest$OnGetResponseListener;)V

    return-void
.end method

.method private getSubtitleTrackFromVideo()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x3

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_0
    iget v5, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v4, v5, :cond_3

    .line 6
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    const/4 v6, 0x0

    .line 7
    :goto_1
    iget v7, v5, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v6, v7, :cond_2

    .line 8
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 9
    iget-object v8, v7, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 10
    iget-object v7, v7, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v7}, Lcom/nettv/livestore/utils/Utils;->getLanguageNameFromCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "None"

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_4

    .line 13
    invoke-direct {p0, v0, v2}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->showSubTitleTrackDlgFragment(Lcom/google/android/exoplayer2/source/TrackGroupArray;Ljava/util/List;)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->tmdb_id:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 15
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->getOpenSubtitleFromApi()V

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 17
    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getNo_subtitle()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->tmdb_id:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 21
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->getOpenSubtitleFromApi()V

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 23
    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getNo_subtitle()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method private initView()V
    .locals 9

    const v0, 0x7f0b0415

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const v0, 0x7f0b02dd

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setApplyEmbeddedStyles(Z)V

    const v0, 0x7f0b037c

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/view/SubtitleView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->subtitleView:Lcom/nettv/livestore/view/SubtitleView;

    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleBgColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleSize()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFixedTextSize(IF)V

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;)V

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->subtitleView:Lcom/nettv/livestore/view/SubtitleView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->subtitleView:Lcom/nettv/livestore/view/SubtitleView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleBgColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->subtitleView:Lcom/nettv/livestore/view/SubtitleView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0b023d

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0088

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_back:Landroid/widget/ImageButton;

    const v0, 0x7f0b009e

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_rewind:Landroid/widget/ImageButton;

    const v0, 0x7f0b0098

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_play:Landroid/widget/ImageButton;

    const v0, 0x7f0b008e

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_forward:Landroid/widget/ImageButton;

    const v0, 0x7f0b0092

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_info:Landroid/widget/ImageButton;

    const v0, 0x7f0b00a1

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_sub:Landroid/widget/ImageButton;

    const v0, 0x7f0b0087

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_audio:Landroid/widget/ImageButton;

    const v0, 0x7f0b009c

    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_resolution:Landroid/widget/ImageButton;

    const v0, 0x7f0b03f9

    .line 21
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->txt_start_time:Landroid/widget/TextView;

    const v0, 0x7f0b03cf

    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->txt_end_time:Landroid/widget/TextView;

    const v0, 0x7f0b01d7

    .line 23
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->image_forward:Landroid/widget/ImageView;

    const v0, 0x7f0b01e4

    .line 24
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->image_rewind:Landroid/widget/ImageView;

    const v0, 0x7f0b03e4

    .line 25
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f0b03f2

    .line 26
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->txt_resolution:Landroid/widget/TextView;

    const v0, 0x7f0b0327

    .line 27
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 29
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 30
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_rewind:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_forward:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_info:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_sub:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_audio:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_resolution:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_rewind:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 39
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 40
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_forward:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 41
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_info:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 42
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_sub:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 43
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_audio:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 44
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_resolution:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 45
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private synthetic lambda$listTimer$2()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->maxTime:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->runNextTicker()V

    return-void
.end method

.method private synthetic lambda$releaseMediaPlayer$0()V
    .locals 2

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/RealmController;->getResumeMovies()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceResumeModel(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$releaseMediaPlayer$1()V
    .locals 2

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/RealmController;->getResumeMovies()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceResumeModel(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$resolutionTimer$3()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->resolutionTime:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->txt_resolution:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->runNextResolutionTicker()V

    return-void
.end method

.method private synthetic lambda$showAudioTrackDlgFragment$4(Ljava/util/List;Lcom/google/android/exoplayer2/source/TrackGroupArray;II)V
    .locals 2

    .line 1
    iput p4, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->audio_position:I

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p4, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 4
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    move v0, p4

    const/4 p4, 0x0

    .line 5
    :goto_0
    iget v1, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge p1, v1, :cond_1

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    .line 7
    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-lt v0, v1, :cond_1

    sub-int/2addr v0, v1

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    .line 10
    :cond_2
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->applySubtitleSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;III)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$showOpenSubtitleDlgFragment$6(Ljava/util/List;Ljava/util/List;I)V
    .locals 1

    .line 1
    iput p3, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->subtitle_position:I

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ne p3, p1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x3

    const/4 p3, -0x1

    .line 3
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->applySubtitleSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;III)V

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->subtitle_position:I

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/SubtitleModel$DataModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SubtitleModel$DataModel;->getAttributesModel()Lcom/nettv/livestore/models/SubtitleModel$AttributesModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SubtitleModel$AttributesModel;->getFileModels()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 5
    iget p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->subtitle_position:I

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/SubtitleModel$DataModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SubtitleModel$DataModel;->getAttributesModel()Lcom/nettv/livestore/models/SubtitleModel$AttributesModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SubtitleModel$AttributesModel;->getFileModels()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/SubtitleModel$FileModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SubtitleModel$FileModel;->getFile_id()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->downloadSubtitleFromApi(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 7
    invoke-virtual {p2}, Lcom/nettv/livestore/models/WordModels;->getNo_subtitle()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showSubTitleTrackDlgFragment$5(Ljava/util/List;Lcom/google/android/exoplayer2/source/TrackGroupArray;II)V
    .locals 2

    .line 1
    iput p4, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->subtitle_position:I

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p4, p1, :cond_0

    const/4 p1, -0x1

    .line 3
    invoke-direct {p0, p2, p3, p1, p1}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->applySubtitleSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;III)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    move v0, p4

    const/4 p4, 0x0

    .line 4
    :goto_0
    iget v1, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge p1, v1, :cond_1

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    .line 6
    iget v1, v1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-lt v0, v1, :cond_1

    sub-int/2addr v0, v1

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->applySubtitleSelection(Lcom/google/android/exoplayer2/source/TrackGroupArray;III)V

    :goto_1
    return-void
.end method

.method private listTimer()V
    .locals 2

    const/16 v0, 0xa

    .line 1
    iput v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->maxTime:I

    .line 2
    new-instance v0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;-><init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;I)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;

    .line 3
    invoke-virtual {v0}, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;->run()V

    return-void
.end method

.method private playVideo(Ljava/lang/String;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getAdaptiveMimeTypeForContentType(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    new-instance v2, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>()V

    const-string v3, "title"

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->playMediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->createMediaSourceFactory()Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->setRenderersFactory(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Z)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 15
    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v1, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;-><init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;Lcom/nettv/livestore/activities/MoviePlayerActivity$1;)V

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 17
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v1, Lcom/google/android/exoplayer2/util/EventLogger;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/util/EventLogger;-><init>()V

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v1, Lcom/nettv/livestore/activities/MoviePlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity$1;-><init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->playMediaItem:Lcom/google/android/exoplayer2/MediaItem;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->play()V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_1

    .line 25
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    invoke-virtual {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->updateProgressBar()V

    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v1

    const-wide/32 v3, 0x1d4c0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-object v1, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    iget-object v3, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 3
    iget-object v1, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    iget-object v3, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-int v9, v1

    .line 4
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v3

    iget-object v4, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->movie_name:Ljava/lang/String;

    iget-object v5, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->tmdb_id:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v1, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v7

    new-instance v10, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v10, v0, v1}, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;I)V

    invoke-virtual/range {v3 .. v10}, Lcom/nettv/livestore/helper/RealmController;->addPositionToMovies(Ljava/lang/String;Ljava/lang/String;ZJILcom/nettv/livestore/helper/RealmChangeItemListener;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object v11

    iget-object v12, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->movie_name:Ljava/lang/String;

    iget-object v13, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->tmdb_id:Ljava/lang/String;

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    new-instance v1, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda2;-><init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;I)V

    move-object/from16 v18, v1

    invoke-virtual/range {v11 .. v18}, Lcom/nettv/livestore/helper/RealmController;->addPositionToMovies(Ljava/lang/String;Ljava/lang/String;ZJILcom/nettv/livestore/helper/RealmChangeItemListener;)V

    .line 6
    :goto_0
    iget-object v1, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 7
    iget-object v1, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->release()V

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 9
    iget-object v2, v0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method private resolutionTimer()V
    .locals 2

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->resolutionTime:I

    .line 2
    new-instance v0, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;-><init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;I)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->hideResolutionTicker:Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;

    .line 3
    invoke-virtual {v0}, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;->run()V

    return-void
.end method

.method private runNextResolutionTicker()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->resolutionTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->resolutionTime:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->hideResolutionTicker:Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private runNextTicker()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->maxTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->maxTime:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private seekToForward()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v2

    .line 4
    iget v4, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->duration:I

    add-int/lit8 v4, v4, 0xa

    iput v4, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->duration:I

    int-to-long v5, v4

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    cmp-long v9, v2, v5

    if-gez v9, :cond_0

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const-wide/16 v4, 0xa

    sub-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    int-to-long v3, v4

    mul-long v3, v3, v7

    add-long/2addr v3, v0

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    :goto_0
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->duration:I

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->updateProgressBar()V

    :cond_1
    return-void
.end method

.method private seekToRewind()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    .line 3
    iget v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->duration:I

    add-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->duration:I

    int-to-long v3, v2

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    cmp-long v7, v0, v3

    if-gez v7, :cond_0

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    goto :goto_0

    :cond_0
    int-to-long v2, v2

    mul-long v2, v2, v5

    sub-long/2addr v0, v2

    .line 5
    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->duration:I

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->updateProgressBar()V

    :cond_1
    return-void
.end method

.method private setRenderersFactory(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p2}, Lcom/nettv/livestore/utils/DemoUtil;->buildRenderersFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/RenderersFactory;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setRenderersFactory(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-void
.end method

.method private showAudioTrackDlgFragment()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v5

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget v2, v5, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v1, v2, :cond_2

    .line 6
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    const/4 v3, 0x0

    .line 7
    :goto_1
    iget v4, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v3, v4, :cond_1

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 9
    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v4}, Lcom/nettv/livestore/utils/Utils;->getLanguageNameFromCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "None"

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const-string v8, "fragment_audio"

    .line 13
    invoke-virtual {v1, v8}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    .line 14
    invoke-static {v2, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_3
    iget v9, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->audio_position:I

    new-instance v10, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;

    const/4 v7, 0x1

    const/4 v6, 0x1

    move-object v2, v10

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/util/List;Lcom/google/android/exoplayer2/source/TrackGroupArray;II)V

    invoke-static {p0, v0, v9, v10}, Lcom/nettv/livestore/dlgfragment/AudioTrackDlgFragment;->newInstance(Landroid/content/Context;Ljava/util/List;ILcom/nettv/livestore/dlgfragment/AudioTrackDlgFragment$ItemPositionListener;)Lcom/nettv/livestore/dlgfragment/AudioTrackDlgFragment;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v1, v8}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private showDefaultAudioTrackDlgFragment()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getAudio_track()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    if-ne v3, v1, :cond_1

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTypeSupport(I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 6
    :goto_1
    new-instance v3, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    iget-object v5, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-direct {v3, p0, v2, v5, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/google/android/exoplayer2/Player;I)V

    .line 7
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->setAllowAdaptiveSelections(Z)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    .line 8
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->setShowDisableOption(Z)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->build()Landroid/app/Dialog;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 12
    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getNo_audio()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method private showExitDlgFragment()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_exit"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getStop_playback()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getPlayback_description()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/WordModels;->getStr_yes()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v5}, Lcom/nettv/livestore/models/WordModels;->getNo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/MoviePlayerActivity$4;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity$4;-><init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->setOkButtonClickListener(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showInfoDlgFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_info"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->infoDlgFragment:Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;

    .line 6
    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showOpenSubtitleDlgFragment(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/SubtitleModel$DataModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/SubtitleModel$DataModel;

    .line 3
    invoke-virtual {v2}, Lcom/nettv/livestore/models/SubtitleModel$DataModel;->getAttributesModel()Lcom/nettv/livestore/models/SubtitleModel$AttributesModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nettv/livestore/models/SubtitleModel$AttributesModel;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nettv/livestore/utils/Utils;->getLanguageNameFromCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "None"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "fragment_subtitle"

    .line 7
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 p1, 0x0

    .line 8
    invoke-static {v2, v4, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    iget v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->subtitle_position:I

    new-instance v4, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, p1, v5}, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Ljava/util/List;I)V

    invoke-static {p0, v0, v2, v4}, Lcom/nettv/livestore/dlgfragment/SubtitleTrackDlgFragment;->newInstance(Landroid/content/Context;Ljava/util/List;ILcom/nettv/livestore/dlgfragment/SubtitleTrackDlgFragment$ItemPositionListener;)Lcom/nettv/livestore/dlgfragment/SubtitleTrackDlgFragment;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v1, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showPlayErrorDlgFragment()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_error"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPlay_back_error()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getPlay_back_error_description()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->errorDlgFragment:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/MoviePlayerActivity$5;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity$5;-><init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->setOkButtonClickListener(Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$OkButtonClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->errorDlgFragment:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showResumeDlgFragment(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_resume"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getResume()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getResume_plyaback_from_ast_position()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/WordModels;->getStr_yes()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v5}, Lcom/nettv/livestore/models/WordModels;->getNo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->resumeDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/MoviePlayerActivity$3;

    invoke-direct {v3, p0, p1}, Lcom/nettv/livestore/activities/MoviePlayerActivity$3;-><init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->setOkButtonClickListener(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->resumeDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showSubTitleTrackDlgFragment(Lcom/google/android/exoplayer2/source/TrackGroupArray;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_subtitle"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->subtitle_position:I

    new-instance v9, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;

    const/4 v8, 0x0

    const/4 v7, 0x3

    move-object v3, v9

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/util/List;Lcom/google/android/exoplayer2/source/TrackGroupArray;II)V

    invoke-static {p0, p2, v1, v9}, Lcom/nettv/livestore/dlgfragment/SubtitleTrackDlgFragment;->newInstance(Landroid/content/Context;Ljava/util/List;ILcom/nettv/livestore/dlgfragment/SubtitleTrackDlgFragment$ItemPositionListener;)Lcom/nettv/livestore/dlgfragment/SubtitleTrackDlgFragment;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public OnGetLinkModelResult(Lorg/json/JSONObject;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/nettv/livestore/models/SubtitleLinkModel;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/SubtitleLinkModel;

    .line 3
    iget-object p2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->playMediaItem:Lcom/google/android/exoplayer2/MediaItem;

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->subtitleView:Lcom/nettv/livestore/view/SubtitleView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->subtitleView:Lcom/nettv/livestore/view/SubtitleView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {p2, v0}, Lcom/nettv/livestore/view/SubtitleView;->setPlayer(Lcom/google/android/exoplayer2/ExoPlayer;)V

    .line 6
    iget-object p2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->subtitleView:Lcom/nettv/livestore/view/SubtitleView;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/SubtitleLinkModel;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/nettv/livestore/view/SubtitleView;->setSubSource(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 8
    invoke-virtual {p2}, Lcom/nettv/livestore/models/WordModels;->getNo_subtitle()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 9
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public OnGetResponseResult(Lorg/json/JSONObject;I)V
    .locals 2

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/nettv/livestore/models/SubtitleModel;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/SubtitleModel;

    .line 3
    invoke-virtual {p1}, Lcom/nettv/livestore/models/SubtitleModel;->getDataModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/nettv/livestore/models/SubtitleModel;->getDataModels()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/nettv/livestore/helper/GetSharedInfo;->getUniqueSubtitleModels(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->showOpenSubtitleDlgFragment(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_subtitle()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 10
    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_subtitle()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 14
    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_subtitle()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v0, v1, :cond_9

    const/16 v1, 0x55

    const/4 v4, 0x0

    if-eq v0, v1, :cond_7

    const/16 v1, 0x59

    if-eq v0, v1, :cond_6

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->listTimer()V

    return v3

    .line 8
    :pswitch_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->listTimer()V

    return v3

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    .line 17
    :cond_2
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->getControlButtonFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_info:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    .line 19
    :pswitch_2
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->getFeatureButtonFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    .line 21
    :cond_3
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->getControlButtonFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v3

    .line 25
    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 26
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->image_forward:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->seekToForward()V

    goto :goto_0

    .line 28
    :cond_6
    :pswitch_4
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 29
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->image_rewind:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->seekToRewind()V

    goto :goto_0

    .line 31
    :cond_7
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_c

    .line 32
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 33
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 34
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_play:Landroid/widget/ImageButton;

    const v1, 0x7f080133

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 35
    :cond_8
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 36
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_play:Landroid/widget/ImageButton;

    const v1, 0x7f080132

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 37
    :cond_9
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->infoDlgFragment:Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 38
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->infoDlgFragment:Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return v3

    .line 39
    :cond_a
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    .line 40
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return v3

    .line 41
    :cond_b
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->showExitDlgFragment()V

    return v3

    .line 42
    :cond_c
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 2
    :sswitch_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->getSubtitleTrackFromVideo()V

    goto/16 :goto_2

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->listTimer()V

    .line 5
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->seekToRewind()V

    goto/16 :goto_2

    .line 6
    :sswitch_2
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_4

    .line 7
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResizeMode()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeMode(I)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->txt_resolution:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getFit_screen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeMode(I)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->txt_resolution:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getFill_screen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->txt_resolution:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->hideResolutionTicker:Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->resolutionTimer()V

    goto :goto_2

    .line 16
    :sswitch_3
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_4

    .line 17
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_play:Landroid/widget/ImageButton;

    const v0, 0x7f080133

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->btn_play:Landroid/widget/ImageButton;

    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 22
    :sswitch_4
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->infoDlgFragment:Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->infoDlgFragment:Lcom/nettv/livestore/dlgfragment/MovieInfoDlgFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_2

    .line 24
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->movie_name:Ljava/lang/String;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->description:Ljava/lang/String;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/MovieModel;->getStream_icon()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->resolution:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->showInfoDlgFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :sswitch_5
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->listTimer()V

    .line 27
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->seekToForward()V

    goto :goto_2

    .line 28
    :sswitch_6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->showExitDlgFragment()V

    goto :goto_2

    .line 29
    :sswitch_7
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->showDefaultAudioTrackDlgFragment()V

    :cond_4
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b0087 -> :sswitch_7
        0x7f0b0088 -> :sswitch_6
        0x7f0b008e -> :sswitch_5
        0x7f0b0092 -> :sswitch_4
        0x7f0b0098 -> :sswitch_3
        0x7f0b009c -> :sswitch_2
        0x7f0b009e -> :sswitch_1
        0x7f0b00a1 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e002c

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->initView()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->description:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->movie_name:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "tmdb_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->tmdb_id:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "stream_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->stream_id:Ljava/lang/String;

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->movie_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/RealmController;->getMovieByName(Ljava/lang/String;)Lcom/nettv/livestore/models/MovieModel;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->stream_id:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->movie_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/RealmController;->getMovieByName(Ljava/lang/String;)Lcom/nettv/livestore/models/MovieModel;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->stream_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/RealmController;->getMovieById(Ljava/lang/String;)Lcom/nettv/livestore/models/MovieModel;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->tmdb_id:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getTmdb_id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->tmdb_id:Ljava/lang/String;

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->txt_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->movie_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-static {p0}, Lcom/nettv/livestore/utils/DemoUtil;->getDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 20
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 21
    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleEnable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->cont_url:Ljava/lang/String;

    goto :goto_1

    .line 25
    :cond_4
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/MovieModel;->getStream_id()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/MovieModel;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/nettv/livestore/helper/GetSharedInfo;->getMovieUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->cont_url:Ljava/lang/String;

    .line 26
    :goto_1
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->currentMovie:Lcom/nettv/livestore/models/MovieModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/MovieModel;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->last_position:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    .line 27
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->cont_url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->showResumeDlgFragment(Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :cond_5
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->cont_url:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->playVideo(Ljava/lang/String;J)V

    .line 30
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->listTimer()V

    :goto_2
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->listTimer()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->onPause()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->releaseMediaPlayer()V

    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    int-to-long p1, p2

    mul-long v0, v0, p1

    const-wide/16 p1, 0x64

    .line 4
    div-long/2addr v0, p1

    long-to-int p1, v0

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    int-to-long v0, p1

    invoke-interface {p2, v0, v1}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->txt_start_time:Landroid/widget/TextView;

    const-string p2, ""

    .line 7
    invoke-static {p2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 8
    invoke-static {v0, v1}, Lcom/nettv/livestore/utils/Utils;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->onPause()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->releaseMediaPlayer()V

    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0327

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {p1, v0, v1}, Lcom/nettv/livestore/utils/Utils;->progressToTimer(IJ)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->txt_start_time:Landroid/widget/TextView;

    const-string v0, ""

    .line 7
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-static {v1, v2}, Lcom/nettv/livestore/utils/Utils;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateProgressBar()V
    .locals 4

    iget-object v0, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
