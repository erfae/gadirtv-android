.class public Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ExoPlayerVodActivity.java"


# static fields
.field private static final BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

.field public static final SPHERICAL_STEREO_MODE_EXTRA:Ljava/lang/String; = "spherical_stereo_mode"

.field public static final SPHERICAL_STEREO_MODE_LEFT_RIGHT:Ljava/lang/String; = "left_right"

.field public static final SPHERICAL_STEREO_MODE_MONO:Ljava/lang/String; = "mono"

.field public static final SPHERICAL_STEREO_MODE_TOP_BOTTOM:Ljava/lang/String; = "top_bottom"

.field private static SUBTITLES_TEXT_SIZE:F = 0.0f

.field private static SUBTITLES_TEXT_SIZE_SMALLER:F = 0.0f

.field public static final TAG:Ljava/lang/String; = "ExoPlayerActivityMV"

.field private static final UPDATE_DELAY:I = 0x10

.field public static card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;


# instance fields
.field private ALLOW_ADS:I

.field private DEFAULT_INT_VALUE:I

.field private GET_ADS:Z

.field private MOVIE_PLAY_EVENT:Ljava/lang/String;

.field private MOVIE_START_EVENT:Ljava/lang/String;

.field private MOVIE_STOP_EVENT:Ljava/lang/String;

.field private activityStartTime:J

.field private adDuration:I

.field private adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

.field bandwidth:Ljava/lang/String;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private eventCategory:Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;

.field private evomediaAdUrl:Ljava/lang/String;

.field private exitMovie:Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

.field private isEvomediaAd:Z

.field private loadedAdTagUri:Landroid/net/Uri;

.field private mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private moveStarted:Ljava/lang/Boolean;

.field playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private pushNotificationLayout:Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;

.field resolution:Ljava/lang/String;

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private trackSelectorParameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private userAgent:Ljava/lang/String;

.field private vodResumePosition:I

.field vodSceen:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    const v0, 0x3d6147ae    # 0.055f

    .line 118
    sput v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->SUBTITLES_TEXT_SIZE:F

    const v0, 0x3d23d70a    # 0.04f

    .line 119
    sput v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->SUBTITLES_TEXT_SIZE_SMALLER:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "-1"

    .line 94
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->bandwidth:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->resolution:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->vodSceen:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 98
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->moveStarted:Ljava/lang/Boolean;

    .line 102
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->isEvomediaAd:Z

    const/4 v1, 0x1

    .line 111
    iput v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->ALLOW_ADS:I

    .line 112
    iput v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->DEFAULT_INT_VALUE:I

    const-string v0, "movie start"

    .line 114
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->MOVIE_START_EVENT:Ljava/lang/String;

    const-string v0, "movie stop"

    .line 115
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->MOVIE_STOP_EVENT:Ljava/lang/String;

    const-string v0, "play"

    .line 116
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->MOVIE_PLAY_EVENT:Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;->VOD:Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->eventCategory:Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;

    const/4 v0, -0x1

    .line 122
    iput v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->vodResumePosition:I

    .line 619
    new-instance v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$3;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$3;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->moveStarted:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$002(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->moveStarted:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->MOVIE_START_EVENT:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->configureAudioVideoButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->activityStartTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->MOVIE_PLAY_EVENT:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->pushNotificationLayout:Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;

    return-object p0
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

    .line 594
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 596
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    .line 600
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTypeSupport(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 602
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;I)V

    .line 603
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->setAllowAdaptiveSelections(Z)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    .line 604
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->build()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method private configureAudioVideoButton()V
    .locals 9

    const v0, 0x7f0b0404

    .line 295
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0b0253

    .line 296
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0b0285

    .line 297
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 299
    new-instance v3, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerVodActivity$9kbATlbJB9e4LVe1_oK35CFvEsU;

    invoke-direct {v3, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerVodActivity$9kbATlbJB9e4LVe1_oK35CFvEsU;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    new-instance v3, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerVodActivity$o6decoNCAylY5122w6D6Ux3FmLg;

    invoke-direct {v3, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerVodActivity$o6decoNCAylY5122w6D6Ux3FmLg;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v3, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 315
    :goto_0
    iget v6, v3, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    if-ge v5, v6, :cond_6

    .line 316
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v6

    .line 317
    iget v7, v6, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-eqz v7, :cond_5

    iget v7, v6, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    iget v6, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-eq v6, v8, :cond_5

    .line 318
    :cond_2
    iget-object v6, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v6

    if-eq v6, v8, :cond_4

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    goto :goto_1

    .line 324
    :cond_3
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    .line 320
    :cond_4
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private configureSubtitleView()V
    .locals 9

    const v0, 0x7f0b0281

    .line 277
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/16 v0, 0xff

    const/16 v1, 0x2b

    .line 281
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 282
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Lato-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 283
    new-instance v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 288
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/text/CaptionStyleCompat;)V

    .line 289
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    const v1, 0x3cf5c28f    # 0.03f

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setBottomPaddingFraction(F)V

    .line 290
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFixedTextSize(IF)V

    return-void
.end method

.method private getPlayingPosition()I
    .locals 5

    const/4 v0, -0x1

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    long-to-int v2, v1

    .line 549
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@on back p "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 550
    invoke-direct {p0, v2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->hasMoviePracticallyEnded(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 553
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private hasMoviePracticallyEnded(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playingPosition"
        }
    .end annotation

    const v0, 0xea60

    .line 654
    div-int/2addr p1, v0

    .line 655
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v1

    long-to-int v2, v1

    div-int/2addr v2, v0

    add-int/lit8 v2, v2, -0xa

    if-lt p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hideNavigationBar()V
    .locals 3

    .line 629
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->shouldHideNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 637
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 639
    new-instance v2, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$4;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;Landroid/view/View;I)V

    .line 640
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_0
    return-void
.end method

.method private hideSystemUi()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/16 v1, 0x1307

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setSystemUiVisibility(I)V

    return-void
.end method

.method private initializePlayer()V
    .locals 2

    .line 335
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    .line 337
    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 339
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->trackSelectorParameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    .line 341
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 342
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    .line 344
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 346
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->getVodAspectRatio()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeMode(I)V

    .line 347
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 348
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->play()V

    return-void
.end method

.method static synthetic lambda$exitMovie$3(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 449
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private play()V
    .locals 4

    .line 367
    sget-object v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->prepareMediaForPlaying(Landroid/net/Uri;)V

    .line 369
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "vod_position"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->vodResumePosition:I

    .line 371
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 374
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$1;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)V

    .line 437
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method private prepareMediaForPlaying(Landroid/net/Uri;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaSourceUri"
        }
    .end annotation

    .line 457
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->userAgent:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 459
    sget-object v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 461
    new-instance v1, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    const/4 v1, 0x0

    .line 462
    aput-object p1, v0, v1

    .line 464
    :goto_0
    sget-object p1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_0

    const/4 p1, 0x0

    const/4 v2, -0x1

    .line 465
    sget-object v3, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 469
    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/x-subrip"

    .line 465
    invoke-static {p1, v4, v2, v3}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    add-int/lit8 p1, v1, 0x1

    .line 471
    new-instance v2, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    sget-object v3, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 472
    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;J)V

    aput-object v2, v0, p1

    move v1, p1

    goto :goto_0

    .line 477
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->VAST_AD_URL:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 478
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->GET_ADS:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    .line 479
    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 480
    :cond_2
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADMOB_ACTIONS:Ljava/lang/String;

    iget v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->DEFAULT_INT_VALUE:I

    invoke-virtual {v1, v2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 481
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 482
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->loadedAdTagUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 483
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->releaseAdsLoader()V

    .line 484
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->loadedAdTagUri:Landroid/net/Uri;

    goto :goto_1

    .line 487
    :cond_3
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->releaseAdsLoader()V

    .line 489
    :cond_4
    :goto_1
    new-instance p1, Lcom/google/android/exoplayer2/source/MergingMediaSource;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 491
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 493
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->isEvomediaAd:Z

    if-eqz p1, :cond_5

    .line 494
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerVodActivity$ir1vb0OCEVutspBwXaoTBNd192Y;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerVodActivity$ir1vb0OCEVutspBwXaoTBNd192Y;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)V

    iget v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->adDuration:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method private releaseAdsLoader()V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    if-eqz v0, :cond_0

    .line 611
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->release()V

    const/4 v0, 0x0

    .line 612
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    .line 613
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->loadedAdTagUri:Landroid/net/Uri;

    .line 614
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getOverlayFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method private releasePlayer()V
    .locals 4

    .line 352
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->MOVIE_STOP_EVENT:Ljava/lang/String;

    const-wide/16 v1, 0x0

    const-string v3, "event"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->logMovie(Ljava/lang/String;JLjava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 354
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->isEvomediaAd:Z

    if-nez v0, :cond_0

    .line 355
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->savePosition()V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 358
    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 359
    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    if-eqz v0, :cond_2

    .line 362
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_2
    return-void
.end method

.method private savePosition()V
    .locals 3

    .line 540
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getPlayingPosition()I

    move-result v0

    .line 541
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    sget-object v2, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->setVodResume(II)Landroidx/lifecycle/LiveData;

    .line 542
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 126
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public exitMovie()V
    .locals 3

    .line 441
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 442
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    const v1, 0x7f150002

    invoke-direct {v0, p0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->exitMovie:Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    goto :goto_0

    .line 444
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->exitMovie:Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    .line 446
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->exitMovie:Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    const v1, 0x7f1403d4

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802eb

    .line 447
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1402e2

    .line 448
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerVodActivity$_5sW42XkJT8yA21m5jZYLMmL9BQ;->INSTANCE:Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerVodActivity$_5sW42XkJT8yA21m5jZYLMmL9BQ;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f14049c

    .line 450
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerVodActivity$wGQNyJ0s1ET84mrTfr4xLwbOiQs;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerVodActivity$wGQNyJ0s1ET84mrTfr4xLwbOiQs;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 452
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public synthetic lambda$configureAudioVideoButton$1$ExoPlayerVodActivity(Landroid/view/View;)V
    .locals 0

    .line 300
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->onAudioClicked()V

    return-void
.end method

.method public synthetic lambda$configureAudioVideoButton$2$ExoPlayerVodActivity(Landroid/view/View;)V
    .locals 0

    .line 303
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->onVideoClicked()V

    return-void
.end method

.method public synthetic lambda$exitMovie$4$ExoPlayerVodActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 451
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->savePosition()V

    return-void
.end method

.method public synthetic lambda$onCreate$0$ExoPlayerVodActivity(Landroid/view/View;)V
    .locals 0

    .line 192
    sget-object p1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->onClosedCaptionsClicked()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$prepareMediaForPlaying$5$ExoPlayerVodActivity()V
    .locals 0

    .line 495
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->releasePlayer()V

    .line 496
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->finish()V

    return-void
.end method

.method public logLoop()V
    .locals 6

    .line 529
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->vodSceen:Ljava/util/Timer;

    new-instance v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$2;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$2;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)V

    const v2, 0x927c0

    int-to-long v4, v2

    const-wide/16 v2, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public logMovie(Ljava/lang/String;JLjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "event_action",
            "event_value",
            "event_type"
        }
    .end annotation

    .line 505
    sget-object v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-string v1, "-1"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getBitrateEstimate()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 511
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->MOVIE_STOP_EVENT:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 512
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v3

    long-to-double v3, v3

    iget-object v5, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    double-to-long v3, v3

    move-object v9, v0

    move-object v8, v1

    move-wide v4, v3

    goto :goto_0

    .line 515
    :cond_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->MOVIE_START_EVENT:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->width:I

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_1

    .line 516
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v3

    const v4, 0x3e19999a    # 0.15f

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setBottomPaddingFraction(F)V

    :cond_1
    move-wide v4, p2

    move-object v9, v0

    move-object v8, v1

    goto :goto_0

    :cond_2
    move-wide v4, p2

    move-object v8, v1

    move-object v9, v8

    .line 522
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->eventCategory:Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;

    sget-object v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v1

    sget-object v3, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v7, "exoplayer"

    move-object v2, p1

    move-object v6, p4

    invoke-static/range {v0 .. v9}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logMovieVod(Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioClicked()V
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 572
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YUVTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f1403a9

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->clickMultiProfileButton(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->clickMultiProfileButton(Ljava/lang/CharSequence;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isControllerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->exitMovie()V

    :goto_0
    return-void
.end method

.method public onClosedCaptionsClicked()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f1403ab

    .line 563
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->clickMultiProfileButton(Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "spherical_stereo_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 139
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->hideNavigationBar()V

    const p1, 0x7f0e002f

    .line 141
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->setContentView(I)V

    .line 142
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    const-string p1, ""

    .line 144
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->evomediaAdUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 145
    iput p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->adDuration:I

    .line 146
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->isEvomediaAd:Z

    .line 147
    sget-object v1, Lcom/magoware/magoware/webtv/global/Global;->shared_preference:Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->GET_ADS:Ljava/lang/String;

    iget v4, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->DEFAULT_INT_VALUE:I

    invoke-virtual {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v3, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->ALLOW_ADS:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->GET_ADS:Z

    const v1, 0x7f0b0505

    .line 149
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_4

    const-string v1, "mono"

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "top_bottom"

    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "left_right"

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const p1, 0x7f14017b

    .line 159
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 160
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->finish()V

    return-void

    .line 165
    :cond_4
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->trackSelectorParameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    const-string v0, "VideoPlayerGlue"

    .line 167
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->userAgent:Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 171
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "movieJson"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 172
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 173
    const-class v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    sput-object p1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 174
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 175
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->configureSubtitleView()V

    goto :goto_2

    .line 177
    :cond_5
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addStreamUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 178
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->evomediaAdUrl:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addDuration"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->adDuration:I

    .line 180
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 181
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->evomediaAdUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->setUrl(Ljava/lang/String;)V

    .line 183
    sget-object v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setVodStream(Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;)V

    .line 184
    sget-object v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setVodSubtitles(Ljava/util/List;)V

    .line 185
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setControllerAutoShow(Z)V

    .line 186
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    .line 187
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setUseController(Z)V

    .line 188
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->isEvomediaAd:Z

    :cond_6
    :goto_2
    const p1, 0x7f0b0281

    .line 191
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerVodActivity$ZQfTE5Mf4MtqfuEubrfJr2c-wMg;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/-$$Lambda$ExoPlayerVodActivity$ZQfTE5Mf4MtqfuEubrfJr2c-wMg;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b06e3

    .line 196
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->pushNotificationLayout:Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->activityStartTime:J

    .line 199
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->logLoop()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isControllerVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->playerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->showController()V

    const/4 p1, 0x1

    return p1

    .line 263
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 227
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 228
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->getInstance()Lcom/magoware/magoware/webtv/util/TopicSubscriber;

    move-result-object v0

    const-string v1, "vod"

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->unsubscribeFrom(Ljava/lang/String;)V

    .line 230
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_2

    .line 234
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->releasePlayer()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 212
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 213
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->getInstance()Lcom/magoware/magoware/webtv/util/TopicSubscriber;

    move-result-object v0

    const-string v1, "vod"

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/TopicSubscriber;->subscribeTo(Ljava/lang/String;)V

    .line 215
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BROADCAST_FCM_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 219
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->mPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_3

    .line 221
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->initializePlayer()V

    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 204
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 205
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->initializePlayer()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 240
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 241
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->vodSceen:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 242
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->releasePlayer()V

    :cond_0
    return-void
.end method

.method public onVideoClicked()V
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 586
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YUVTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f1403ac

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->clickMultiProfileButton(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->clickMultiProfileButton(Ljava/lang/CharSequence;I)V

    :cond_1
    :goto_0
    return-void
.end method
