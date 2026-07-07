.class public Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;
.super Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;
.source "ExoPlayerActivity.java"

# interfaces
.implements Lcom/google/android/exoplayer2/PlaybackPreparer;
.implements Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;
.implements Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen$VirtualRemoteViewClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;,
        Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerErrorMessageProvider;,
        Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$DrmInfo;
    }
.end annotation


# static fields
.field public static final ABR_ALGORITHM_DEFAULT:Ljava/lang/String; = "default"

.field public static final ABR_ALGORITHM_EXTRA:Ljava/lang/String; = "abr_algorithm"

.field public static final ABR_ALGORITHM_RANDOM:Ljava/lang/String; = "random"

.field public static final ACTION_VIEW:Ljava/lang/String; = "com.google.android.exoplayer.demo.action.VIEW"

.field public static final AD_TAG_URI_EXTRA:Ljava/lang/String; = "ad_tag_uri"

.field public static final DRM_KEY_REQUEST_PROPERTIES_EXTRA:Ljava/lang/String; = "drm_key_request_properties"

.field public static final DRM_LICENSE_URL_EXTRA:Ljava/lang/String; = "drm_license_url"

.field public static final DRM_MULTI_SESSION_EXTRA:Ljava/lang/String; = "drm_multi_session"

.field public static final EXTENSION_EXTRA:Ljava/lang/String; = "extension"

.field private static final KEY_AUTO_PLAY:Ljava/lang/String; = "auto_play"

.field private static final KEY_POSITION:Ljava/lang/String; = "position"

.field private static final KEY_TRACK_SELECTOR_PARAMETERS:Ljava/lang/String; = "track_selector_parameters"

.field private static final KEY_WINDOW:Ljava/lang/String; = "window"

.field public static MyTimer:Ljava/util/Timer; = null

.field public static final PREFER_EXTENSION_DECODERS_EXTRA:Ljava/lang/String; = "prefer_extension_decoders"

.field public static openedView:Ljava/lang/String;

.field private static playOnActivityPaused:Z


# instance fields
.field public final ACTION_VIEW_LIST:Ljava/lang/String;

.field private ALLOW_ADS:I

.field private final ALL_CATEGORIES:I

.field private final BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

.field private DEFAULT_INT_VALUE:I

.field public final DRM_KEY_REQUEST_PROPERTIES:Ljava/lang/String;

.field public final DRM_MULTI_SESSION:Ljava/lang/String;

.field public final DRM_SCHEME_EXTRA:Ljava/lang/String;

.field public final DRM_SCHEME_UUID_EXTRA:Ljava/lang/String;

.field public final EXTENSION_LIST_EXTRA:Ljava/lang/String;

.field private GET_ADS:Z

.field public final PREFER_EXTENSION_DECODERS:Ljava/lang/String;

.field private SHOW_AD_AFTER_ACTIONS:I

.field private final TAG:Ljava/lang/String;

.field public final URI_LIST_EXTRA:Ljava/lang/String;

.field private activityStartTime:J

.field private activity_paused:Z

.field private adMobUtil:Lcom/magoware/magoware/webtv/util/AdMobUtil;

.field private adUiViewGroup:Landroid/view/ViewGroup;

.field private adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

.field private audioManager:Landroid/media/AudioManager;

.field private catchUp:Ljava/lang/Boolean;

.field private channelAfterAd:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field private channelNumber:I

.field private channelObject:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field private channels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;"
        }
    .end annotation
.end field

.field private currentFormatStream:Lcom/google/android/exoplayer2/Format;

.field public current_category_id:I

.field private current_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field private dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private debugTextView:Landroid/widget/TextView;

.field private debugViewHelper:Lcom/google/android/exoplayer2/ui/DebugTextViewHelper;

.field private elapsedMillis1:I

.field private exoPlayerExtraButton:Landroid/widget/Button;

.field private exoPlayerExtraTextView:Landroid/widget/TextView;

.field private exoPlayerLinearLayout:Landroid/widget/LinearLayout;

.field private get_channel_object:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field public handler3:Landroid/os/Handler;

.field private height:I

.field private inErrorState:Z

.field public is_adult_content:Z

.field private lastPos:I

.field private lastSeenTrackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private last_channel_icon:Landroid/widget/Button;

.field private liveTvSceen:Ljava/util/Timer;

.field private loadedAdTagUri:Landroid/net/Uri;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private mainHandler:Landroid/os/Handler;

.field private mediaDrm:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

.field private mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private metrics:Landroid/util/DisplayMetrics;

.field private needRetrySource:Z

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private previous_playing_channel:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field private pushNotificationLayout:Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;

.field private rootView:Landroid/view/View;

.field private selectDefaultSubtitles:Z

.field private sendExitLog:Z

.field private showDefaultOptionsMultiProfile:Z

.field private showRemoteOnScreen:Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;

.field private showTraditionalOsd:Z

.field private show_new_close_player_dialog:Z

.field private startAutoPlay:Z

.field private startPosition:J

.field private startWindow:I

.field private stream:Ljava/lang/String;

.field private this_activity:Lcom/magoware/magoware/webtv/activities/CustomActivity;

.field private timeStart:Ljava/lang/String;

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private trackSelectorParameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private userAgent:Ljava/lang/String;

.field private videoErrorShow:Z

.field private vmxToken:Ljava/lang/String;

.field private widthPixelScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 199
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->MyTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 205
    sput-boolean v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playOnActivityPaused:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 116
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;-><init>()V

    const-string v0, "drm_scheme"

    .line 119
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->DRM_SCHEME_EXTRA:Ljava/lang/String;

    const-string v0, "drm_multi_session"

    .line 120
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->DRM_MULTI_SESSION:Ljava/lang/String;

    const-string v0, "drm_scheme_uuid"

    .line 121
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->DRM_SCHEME_UUID_EXTRA:Ljava/lang/String;

    const-string v0, "drm_key_request_properties"

    .line 122
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->DRM_KEY_REQUEST_PROPERTIES:Ljava/lang/String;

    const-string v0, "prefer_extension_decoders"

    .line 124
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->PREFER_EXTENSION_DECODERS:Ljava/lang/String;

    const-string v0, "com.google.android.exoplayer.demo.action.VIEW_LIST"

    .line 125
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->ACTION_VIEW_LIST:Ljava/lang/String;

    const-string v0, "uri_list"

    .line 126
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->URI_LIST_EXTRA:Ljava/lang/String;

    const-string v0, "extension_list"

    .line 127
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->EXTENSION_LIST_EXTRA:Ljava/lang/String;

    .line 128
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    const-string v0, "ExoPlayerActivity"

    .line 147
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->videoErrorShow:Z

    .line 183
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->handler3:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 184
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->catchUp:Ljava/lang/Boolean;

    .line 188
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->activity_paused:Z

    const-string v2, ""

    .line 194
    iput-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->timeStart:Ljava/lang/String;

    .line 195
    iput v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->ALL_CATEGORIES:I

    .line 196
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->is_adult_content:Z

    const/16 v3, 0x8

    .line 210
    iput v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->SHOW_AD_AFTER_ACTIONS:I

    .line 211
    iput v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->ALLOW_ADS:I

    .line 212
    iput v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->DEFAULT_INT_VALUE:I

    .line 213
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->sendExitLog:Z

    .line 214
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->showDefaultOptionsMultiProfile:Z

    .line 215
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->selectDefaultSubtitles:Z

    .line 219
    iput-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->vmxToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)Lcom/magoware/magoware/webtv/util/AdMobUtil;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->adMobUtil:Lcom/magoware/magoware/webtv/util/AdMobUtil;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->channelAfterAd:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->updateButtonVisibilities()V

    return-void
.end method

.method static synthetic access$1100(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->inErrorState:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->inErrorState:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->updateResumePosition()V

    return-void
.end method

.method static synthetic access$1300(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ExoPlaybackException;)Z
    .locals 0

    .line 116
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->isBehindLiveWindow(Lcom/google/android/exoplayer2/ExoPlaybackException;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->clearResumePosition()V

    return-void
.end method

.method static synthetic access$1600(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->lastSeenTrackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Lcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->lastSeenTrackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->showToast(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)Landroid/widget/Button;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->clickMultiProfileButton(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->showControls()V

    return-void
.end method

.method static synthetic access$800(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->videoErrorShow:Z

    return p0
.end method

.method static synthetic access$802(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->videoErrorShow:Z

    return p1
.end method

.method static synthetic access$900(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->initLogs()V

    return-void
.end method

.method private areSubtitlesVisible()Z
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private buildDrmSessionManagerV18(Ljava/util/UUID;Ljava/lang/String;[Ljava/lang/String;Z)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uuid",
            "licenseUrl",
            "keyRequestPropertiesArray",
            "multiSession"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 574
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getApplication()Landroid/app/Application;

    move-result-object p4

    check-cast p4, Lcom/magoware/magoware/webtv/MagowareApplication;

    invoke-virtual {p4}, Lcom/magoware/magoware/webtv/MagowareApplication;->buildHttpDataSourceFactory()Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object p4

    .line 575
    new-instance v0, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;

    invoke-direct {v0, p2, p4}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 577
    :goto_0
    array-length p4, p3

    add-int/lit8 p4, p4, -0x1

    if-ge p2, p4, :cond_1

    add-int/lit8 p4, p2, 0x1

    .line 578
    aget-object v1, p3, p4

    if-eqz v1, :cond_0

    .line 579
    aget-object v1, p3, p2

    aget-object p4, p3, p4

    invoke-virtual {v0, v1, p4}, Lcom/google/android/exoplayer2/drm/HttpMediaDrmCallback;->setKeyRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 583
    :cond_1
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->releaseMediaDrm()V

    .line 584
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->mediaDrm:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    .line 585
    new-instance p1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Builder;->build(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object p1

    return-object p1
.end method

.method private buildMediaSource(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "overrideExtension",
            "drmSessionManager"
        }
    .end annotation

    .line 545
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 560
    new-instance p2, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 561
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->setDrmSessionManager(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    move-result-object p2

    .line 562
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p1

    return-object p1

    .line 564
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 556
    :cond_1
    new-instance p2, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 557
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setDrmSessionManager(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object p2

    .line 558
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1

    .line 552
    :cond_2
    new-instance p2, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 553
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->setDrmSessionManager(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    move-result-object p2

    .line 554
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    return-object p1

    .line 548
    :cond_3
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 549
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->setDrmSessionManager(Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    move-result-object p2

    .line 550
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1
.end method

.method private clearResumePosition()V
    .locals 2

    const/4 v0, -0x1

    .line 650
    iput v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->resumeWindow:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 651
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->resumePosition:J

    return-void
.end method

.method private clearStartPosition()V
    .locals 2

    const/4 v0, 0x1

    .line 625
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->startAutoPlay:Z

    const/4 v0, -0x1

    .line 626
    iput v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->startWindow:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 627
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->startPosition:J

    return-void
.end method

.method private clickMultiProfileButton(Ljava/lang/CharSequence;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "rendererIndex"
        }
    .end annotation

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 760
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->selectDefaultSubtitles:Z

    if-eqz v0, :cond_0

    .line 761
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->toggleSubtitles()V

    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 766
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    .line 770
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTypeSupport(I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 772
    :cond_2
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;I)V

    const p1, 0x7f1500f3

    .line 773
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->setTheme(I)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    .line 774
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->setAllowAdaptiveSelections(Z)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    .line 775
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->build()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method

.method private getDrmSessionManager()Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Authorization"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 519
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->vmxToken:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "https://multidrm.vsaas.verimatrixcloud.net/widevine"

    const v4, 0x7f140171

    const v5, 0x7f14016f

    const/4 v6, 0x0

    :try_start_0
    const-string v7, "widevine"

    .line 526
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Util;->getDrmUuid(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    invoke-direct {p0, v7, v1, v0, v2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->buildDrmSessionManagerV18(Ljava/util/UUID;Ljava/lang/String;[Ljava/lang/String;Z)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object v6
    :try_end_0
    .catch Lcom/google/android/exoplayer2/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const v4, 0x7f14016f

    goto :goto_0

    :catch_0
    move-exception v0

    .line 533
    iget v0, v0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;->reason:I

    if-ne v0, v3, :cond_1

    :goto_0
    if-nez v6, :cond_2

    .line 537
    invoke-direct {p0, v4}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->showToast(I)V

    .line 538
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->finish()V

    :cond_2
    return-object v6
.end method

.method private initLogs()V
    .locals 5

    .line 987
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->sendLogLiveChannelLoadingTime()V

    .line 988
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->channelStartupTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 989
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->sendChannelChangeLog()V

    .line 991
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->channelStartupTime:J

    .line 992
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->liveTVStartupTime:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 993
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->liveTVStartupTime:J

    .line 994
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->sendLogLiveTVPlayTime()V

    :cond_1
    return-void
.end method

.method private static isBehindLiveWindow(Lcom/google/android/exoplayer2/ExoPlaybackException;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 811
    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 816
    instance-of v0, p0, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 819
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_2
    return v1
.end method

.method private preparePlayer()V
    .locals 5

    .line 489
    iget v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->startWindow:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 491
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-wide v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->startPosition:J

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(IJ)V

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 494
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare()V

    .line 495
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->updateButtonVisibilities()V

    .line 497
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 498
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->inErrorState:Z

    return-void
.end method

.method private refreshSubtitlesButtonTint()V
    .locals 3

    .line 793
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->areSubtitlesVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method private releaseAdsLoader()V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    if-eqz v0, :cond_0

    .line 609
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->release()V

    const/4 v0, 0x0

    .line 610
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    .line 611
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->loadedAdTagUri:Landroid/net/Uri;

    .line 612
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getOverlayFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method private releaseMediaDrm()V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->mediaDrm:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->release()V

    const/4 v0, 0x0

    .line 639
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->mediaDrm:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    :cond_0
    return-void
.end method

.method private selectDefaultSubtitles(Ljava/lang/CharSequence;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "rendererIndex"
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 782
    new-instance v0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;I)V

    .line 783
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->build()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method private setDrmType(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 378
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->channelObject:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 380
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->stream_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->stream:Ljava/lang/String;

    .line 382
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->drm_platform:Ljava/lang/String;

    const-string v1, "verimatrix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->updateVmxId()V

    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->setTokenUrl(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    goto :goto_0

    .line 387
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->openPlayer()V

    :cond_2
    :goto_0
    return-void
.end method

.method private showAdOnChannelChange()V
    .locals 3

    .line 895
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->releasePlayer()V

    .line 896
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->adMobUtil:Lcom/magoware/magoware/webtv/util/AdMobUtil;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/AdMobUtil;->showAd()V

    .line 897
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADMOB_ACTIONS:Ljava/lang/String;

    iget v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->DEFAULT_INT_VALUE:I

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    return-void
.end method

.method private showControls()V
    .locals 0

    return-void
.end method

.method private showToast(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageId"
        }
    .end annotation

    .line 803
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 807
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private toggleSubtitles()V
    .locals 2

    .line 788
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->areSubtitlesVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setVisibility(I)V

    .line 789
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->refreshSubtitlesButtonTint()V

    return-void
.end method

.method private updateButtonVisibilities()V
    .locals 6

    .line 694
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 695
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_1

    return-void

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 705
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 706
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    .line 707
    iget v4, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->showDefaultOptionsMultiProfile:Z

    const/4 v5, 0x1

    if-nez v4, :cond_3

    iget v4, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ne v4, v5, :cond_3

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-eq v3, v5, :cond_8

    .line 709
    :cond_3
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v3

    if-eq v3, v5, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    goto/16 :goto_2

    :cond_4
    const v3, 0x7f140434

    .line 720
    iget-boolean v4, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->selectDefaultSubtitles:Z

    if-eqz v4, :cond_5

    .line 721
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->selectDefaultSubtitles(Ljava/lang/CharSequence;I)V

    .line 722
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->refreshSubtitlesButtonTint()V

    .line 724
    :cond_5
    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraButton:Landroid/widget/Button;

    const v5, 0x7f080173

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    :cond_6
    const v3, 0x7f140478

    .line 716
    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraButton:Landroid/widget/Button;

    const v5, 0x7f080174

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    :cond_7
    const v3, 0x7f140079

    .line 712
    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraButton:Landroid/widget/Button;

    const v5, 0x7f080172

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 729
    :goto_1
    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraButton:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 730
    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 731
    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraButton:Landroid/widget/Button;

    new-instance v5, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerActivity$_xdALuM4ePO6jiLe69UYK_r3X0w;

    invoke-direct {v5, p0, v3}, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerActivity$_xdALuM4ePO6jiLe69UYK_r3X0w;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v4

    if-nez v4, :cond_8

    .line 735
    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 736
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraTextView:Landroid/widget/TextView;

    new-instance v4, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerActivity$RH4aTK7OQc6ErXbmTZBvUxYFFrA;

    invoke-direct {v4, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerActivity$RH4aTK7OQc6ErXbmTZBvUxYFFrA;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerLinearLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$2;

    invoke-direct {v4, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$2;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraButton:Landroid/widget/Button;

    new-instance v4, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$3;

    invoke-direct {v4, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$3;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private updateResumePosition()V
    .locals 4

    .line 644
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->startWindow:I

    .line 645
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isCurrentWindowSeekable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 646
    :goto_0
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->startPosition:J

    return-void
.end method

.method private updateStartPosition()V
    .locals 4

    .line 617
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->startAutoPlay:Z

    .line 619
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->startWindow:I

    const-wide/16 v0, 0x0

    .line 620
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getContentPosition()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->startPosition:J

    :cond_0
    return-void
.end method

.method private updateTrackSelectorParameters()V
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->trackSelectorParameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    :cond_0
    return-void
.end method

.method private updateVmxId()V
    .locals 3

    .line 502
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exo test +++ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->channelObject:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->contentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->channelObject:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->contentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->setVmxId(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerActivity$rRZ3UYPG-KZnoKDkRGJfSYsh4PA;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerActivity$rRZ3UYPG-KZnoKDkRGJfSYsh4PA;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method protected concatTokenStream(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamToken"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->stream:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->stream:Ljava/lang/String;

    .line 326
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->openPlayer()V

    return-void
.end method

.method public getBandwidth()Ljava/lang/String;
    .locals 2

    .line 1013
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->build()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object v0

    .line 1015
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->channelObject:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 2

    .line 1006
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "-1"

    :goto_0
    return-object v0
.end method

.method public synthetic lambda$updateButtonVisibilities$1$ExoPlayerActivity(ILandroid/view/View;)V
    .locals 0

    .line 732
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->clickMultiProfileButton(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public synthetic lambda$updateButtonVisibilities$2$ExoPlayerActivity(Landroid/view/View;)V
    .locals 1

    .line 738
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->clickMultiProfileButton(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public synthetic lambda$updateVmxId$0$ExoPlayerActivity(Lcom/google/gson/JsonObject;)V
    .locals 4

    .line 504
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exo test +++ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "status_code"

    .line 506
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const-string v0, "response_object"

    .line 507
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "token"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 508
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->vmxToken:Ljava/lang/String;

    .line 510
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->openPlayer()V

    goto :goto_0

    .line 513
    :cond_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Exo test +++ NULL"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 223
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 226
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->audioManager:Landroid/media/AudioManager;

    .line 227
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->showTraditionalOsd:Z

    const/4 p1, 0x0

    .line 228
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 229
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->MyTimer:Ljava/util/Timer;

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->activityStartTime:J

    .line 231
    sget-object v1, Lcom/magoware/magoware/webtv/global/Global;->shared_preference:Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->GET_ADS:Ljava/lang/String;

    iget v4, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->DEFAULT_INT_VALUE:I

    invoke-virtual {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->ALLOW_ADS:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->GET_ADS:Z

    .line 232
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADMOB_ACTIONS:Ljava/lang/String;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v4

    sget-object v5, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADMOB_ACTIONS:Ljava/lang/String;

    iget v6, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->DEFAULT_INT_VALUE:I

    invoke-virtual {v4, v5, v6}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 233
    new-instance v1, Lcom/magoware/magoware/webtv/util/AdMobUtil;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/util/AdMobUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->adMobUtil:Lcom/magoware/magoware/webtv/util/AdMobUtil;

    .line 234
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/util/AdMobUtil;->getmInterstitialAd()Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->adMobUtil:Lcom/magoware/magoware/webtv/util/AdMobUtil;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/util/AdMobUtil;->getmInterstitialAd()Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v1

    new-instance v3, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$1;

    invoke-direct {v3, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$1;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    :cond_1
    const-string v1, "ExoPlayerDemo"

    .line 246
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->userAgent:Ljava/lang/String;

    .line 247
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->startAutoPlay:Z

    .line 248
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->clearResumePosition()V

    .line 249
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->getDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 251
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->mainHandler:Landroid/os/Handler;

    .line 252
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->metrics:Landroid/util/DisplayMetrics;

    .line 253
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 254
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->widthPixelScreen:I

    .line 255
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x14

    if-le v1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->show_new_close_player_dialog:Z

    const-string v0, "none"

    .line 256
    sput-object v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->openedView:Ljava/lang/String;

    .line 257
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 259
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->gDetector:Landroid/view/GestureDetector;

    const v0, 0x7f0b06d0

    .line 260
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->showRemoteOnScreen:Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;

    .line 261
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->showRemoteOnScreen:Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->setVirtualRemoteViewClickListener(Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen$VirtualRemoteViewClickListener;)V

    const v0, 0x7f0b01de

    .line 264
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->debugTextView:Landroid/widget/TextView;

    .line 265
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0b0505

    .line 266
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 267
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->getLiveTvAspectRatio()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeMode(I)V

    .line 268
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    new-instance v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerErrorMessageProvider;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerErrorMessageProvider;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setErrorMessageProvider(Lcom/google/android/exoplayer2/util/ErrorMessageProvider;)V

    .line 269
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setUseController(Z)V

    .line 270
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    .line 271
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->requestFocus()Z

    .line 272
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->trackSelectorParameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 274
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v2, 0x8

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setVisibility(I)V

    .line 276
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 277
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    const v0, 0x7f0b0269

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraButton:Landroid/widget/Button;

    goto :goto_5

    .line 279
    :cond_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    const v0, 0x7f0b0257

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerLinearLayout:Landroid/widget/LinearLayout;

    .line 280
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->showRemoteOnScreen:Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;

    const v0, 0x7f0b0147

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    const v0, 0x7f0b0268

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_3
    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraButton:Landroid/widget/Button;

    .line 281
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->showRemoteOnScreen:Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;

    const v0, 0x7f0b0148

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/VirtualRemoteOnScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    const v0, 0x7f0b0258

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_4
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraTextView:Landroid/widget/TextView;

    .line 284
    :goto_5
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->clearStartPosition()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 307
    invoke-super {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 301
    invoke-super {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onResume()V

    .line 302
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->channelObject:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->setDrmType(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionEvent"
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->onSingleTapUp()V

    const/4 p1, 0x1

    return p1
.end method

.method public onStop()V
    .locals 5

    .line 289
    invoke-super {p0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->onStop()V

    .line 290
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADMOB_ACTIONS:Ljava/lang/String;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADMOB_ACTIONS:Ljava/lang/String;

    iget v4, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->DEFAULT_INT_VALUE:I

    invoke-virtual {v2, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    return-void
.end method

.method public onVirtualRemoteViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-ne p1, v2, :cond_0

    .line 335
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1, v0}, Landroid/media/AudioManager;->adjustVolume(II)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x19

    if-ne p1, v2, :cond_1

    .line 338
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->audioManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/media/AudioManager;->adjustVolume(II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 340
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    .line 341
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x52

    if-ne p1, v0, :cond_3

    .line 344
    new-instance p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;

    invoke-static {}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllCategoriesObjects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, p0, p0, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Landroid/content/Context;Ljava/util/List;)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->configureGenreList(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;)V

    .line 346
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->openGenreList(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$ChannelMenuCategoryList;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x4d2

    if-ne p1, v0, :cond_4

    :try_start_0
    const-string p1, "device_policy"

    .line 349
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 350
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->lockNow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 352
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    const/16 v0, 0x4d3

    if-ne p1, v0, :cond_5

    .line 356
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->displayEpg()V

    goto :goto_0

    .line 358
    :cond_5
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 359
    invoke-virtual {p0, p1, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :goto_0
    return-void
.end method

.method public onVisibilityChange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 318
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->exoPlayerExtraTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected openPlayer()V
    .locals 9

    .line 395
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_d

    .line 396
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.exoplayer.demo.action.VIEW"

    .line 400
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    new-array v1, v3, [Landroid/net/Uri;

    .line 401
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->stream:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/String;

    const-string v5, "extension"

    .line 402
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 408
    aget-object v6, v1, v5

    new-array v7, v3, [Lcom/google/android/exoplayer2/MediaItem;

    .line 409
    invoke-static {v6}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v6

    aput-object v6, v7, v4

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Util;->checkCleartextTrafficPermitted([Lcom/google/android/exoplayer2/MediaItem;)Z

    move-result v6

    if-nez v6, :cond_0

    const v0, 0x7f14016d

    .line 410
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->showToast(I)V

    return-void

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 414
    :cond_1
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/Util;->maybeRequestReadExternalStoragePermission(Landroid/app/Activity;[Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    const-string v5, "abr_algorithm"

    .line 418
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v6, "default"

    .line 419
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    const-string v6, "random"

    .line 421
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 422
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;-><init>()V

    goto :goto_2

    :cond_4
    const v0, 0x7f14017a

    .line 424
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->showToast(I)V

    .line 425
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->finish()V

    return-void

    .line 420
    :cond_5
    :goto_1
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    :goto_2
    const-string v6, "prefer_extension_decoders"

    .line 428
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 429
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->useExtensionRenderers()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 433
    :goto_3
    new-instance v6, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v6, p0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 434
    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setExtensionRendererMode(I)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    .line 436
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p0, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 437
    iget-object v5, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->trackSelectorParameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    const/4 v0, 0x0

    .line 438
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->lastSeenTrackGroupArray:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 440
    new-instance v5, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    iget-object v7, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v5, v7}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 443
    new-instance v7, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V

    iget-object v6, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 444
    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object v6

    .line 445
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSourceFactory;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object v5

    .line 446
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v5

    iput-object v5, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 447
    new-instance v6, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;

    invoke-direct {v6, p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$PlayerEventListener;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity$1;)V

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 449
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-boolean v5, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->startAutoPlay:Z

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 450
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v5, Lcom/google/android/exoplayer2/util/EventLogger;

    iget-object v6, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/util/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 451
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v5, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 452
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlaybackPreparer(Lcom/google/android/exoplayer2/PlaybackPreparer;)V

    .line 453
    new-instance v0, Lcom/google/android/exoplayer2/ui/DebugTextViewHelper;

    iget-object v5, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v6, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->debugTextView:Landroid/widget/TextView;

    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/ui/DebugTextViewHelper;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->debugViewHelper:Lcom/google/android/exoplayer2/ui/DebugTextViewHelper;

    .line 454
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/DebugTextViewHelper;->start()V

    new-array v0, v3, [Lcom/google/android/exoplayer2/source/MediaSource;

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_8

    .line 457
    aget-object v6, v1, v5

    aget-object v7, v2, v5

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getDrmSessionManager()Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->buildMediaSource(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmSessionManager;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v6

    aput-object v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 460
    :cond_8
    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 461
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->VAST_AD_URL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 462
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADMOB_ACTIONS:Ljava/lang/String;

    iget v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->DEFAULT_INT_VALUE:I

    invoke-virtual {v1, v2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->SHOW_AD_AFTER_ACTIONS:I

    if-ne v1, v2, :cond_b

    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->GET_ADS:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    .line 463
    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 464
    :cond_a
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADMOB_ACTIONS:Ljava/lang/String;

    iget v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->DEFAULT_INT_VALUE:I

    invoke-virtual {v1, v2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 465
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 466
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->loadedAdTagUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 467
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->releaseAdsLoader()V

    .line 468
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->loadedAdTagUri:Landroid/net/Uri;

    goto :goto_5

    .line 477
    :cond_b
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->releaseAdsLoader()V

    goto :goto_5

    :cond_c
    const v0, 0x7f14045c

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    .line 404
    invoke-virtual {p0, v0, v2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->showToast(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->finish()V

    return-void

    .line 481
    :cond_d
    :goto_5
    sget-boolean v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->isCatchupStream:Z

    if-eqz v0, :cond_e

    .line 482
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->preparePlayer()V

    goto :goto_6

    .line 483
    :cond_e
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->channelObject:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->onPlayerOpened(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 484
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->preparePlayer()V

    :cond_f
    :goto_6
    return-void
.end method

.method public playStream(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->channelLoadTime:J

    .line 369
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->releasePlayer()V

    .line 371
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 373
    :cond_0
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->setDrmType(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    return-void
.end method

.method public preparePlayback()V
    .locals 0

    .line 312
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->openPlayer()V

    return-void
.end method

.method public releasePlayer()V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->onPause()V

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 593
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->updateTrackSelectorParameters()V

    .line 594
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->updateStartPosition()V

    .line 595
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->debugViewHelper:Lcom/google/android/exoplayer2/ui/DebugTextViewHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/DebugTextViewHelper;->stop()V

    .line 596
    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->debugViewHelper:Lcom/google/android/exoplayer2/ui/DebugTextViewHelper;

    .line 597
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 598
    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 599
    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    if-eqz v0, :cond_2

    .line 602
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 604
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->releaseMediaDrm()V

    return-void
.end method

.method public useExtensionRenderers()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
