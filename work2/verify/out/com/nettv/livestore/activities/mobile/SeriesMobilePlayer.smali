.class public Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SeriesMobilePlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$PlayerEventListener;
    }
.end annotation


# static fields
.field private static final KEY_TRACK_SELECTION_PARAMETERS:Ljava/lang/String; = "track_selection_parameters"


# instance fields
.field public audioManager:Landroid/media/AudioManager;

.field public brightSeekBar:Landroid/widget/SeekBar;

.field public btn_audio:Landroid/widget/ImageButton;

.field public btn_back:Landroid/widget/ImageButton;

.field public btn_down:Landroid/widget/ImageButton;

.field public btn_forward:Landroid/widget/ImageButton;

.field public btn_play:Landroid/widget/ImageButton;

.field public btn_resolution:Landroid/widget/ImageButton;

.field public btn_rewind:Landroid/widget/ImageButton;

.field public btn_sub:Landroid/widget/ImageButton;

.field public contentUrl:Ljava/lang/String;

.field public dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field public duration:I

.field public episodeDlgFragment:Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;

.field public episodeModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/EpisodeModel;",
            ">;"
        }
    .end annotation
.end field

.field public episode_position:I

.field public errorDlgFragment:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;

.field public error_count:I

.field public exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

.field public handler:Landroid/os/Handler;

.field public hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

.field public is_system_setting:Z

.field public last_position:J

.field public ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mUpdateTimeTask:Ljava/lang/Runnable;

.field public maxTime:I

.field public name:Ljava/lang/String;

.field public pictureInPictureParams:Landroid/app/PictureInPictureParams$Builder;

.field public player:Lcom/google/android/exoplayer2/ExoPlayer;

.field public playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public resumeDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

.field public resume_key:Ljava/lang/String;

.field public season_name:Ljava/lang/String;

.field public season_pos:I

.field public seekBar:Landroid/widget/SeekBar;

.field public series_name:Ljava/lang/String;

.field public trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

.field public trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field public txt_end_time:Landroid/widget/TextView;

.field public txt_name:Landroid/widget/TextView;

.field public txt_start_time:Landroid/widget/TextView;

.field public volumeLevel:I

.field public volumeSeekBar:Landroid/widget/SeekBar;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$0VmsbGXy2JzJ-q3OgUWQSSJi6bg(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->lambda$listTimer$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$iHMpNTgeonZzgqvCLFCFe8Q8VxU(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->lambda$initView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v2-ZNqJbFg_zwI2u4dM_AC-0FWA(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->wordModels:Lcom/nettv/livestore/models/WordModels;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->last_position:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->error_count:I

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->duration:I

    .line 5
    iput-boolean v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->is_system_setting:Z

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->handler:Landroid/os/Handler;

    .line 7
    new-instance v0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$4;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$4;-><init>(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playVideo(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic access$100(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->listTimer()V

    return-void
.end method

.method public static synthetic access$200(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playEpisode(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playNextEpisode()V

    return-void
.end method

.method public static synthetic access$500(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;Ljava/lang/String;)J
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->getLastPosition(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$600(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->showPlayErrorDlgFragment()V

    return-void
.end method

.method public static synthetic access$700(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method private checkAddedRecent(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSeriesResumeModel()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/ResumeModel;

    .line 4
    invoke-virtual {v1}, Lcom/nettv/livestore/models/ResumeModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_24
    return-void
.end method

.method private createMediaSourceFactory()Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .registers 4

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

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->setDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    move-result-object v0

    return-object v0
.end method

.method private getLastPosition(Ljava/lang/String;)J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSeriesResumeModel()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nettv/livestore/models/ResumeModel;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/ResumeModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/ResumeModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/ResumeModel;->getLast_position()J

    move-result-wide v0

    return-wide v0

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private initView()V
    .registers 10

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

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setApplyEmbeddedStyles(Z)V

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleBgColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 5
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;)V

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleSize()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFixedTextSize(IF)V

    const v0, 0x7f0b023d

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0088

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_back:Landroid/widget/ImageButton;

    const v0, 0x7f0b009e

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_rewind:Landroid/widget/ImageButton;

    const v0, 0x7f0b0098

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_play:Landroid/widget/ImageButton;

    const v0, 0x7f0b008e

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_forward:Landroid/widget/ImageButton;

    const v0, 0x7f0b00a1

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_sub:Landroid/widget/ImageButton;

    const v0, 0x7f0b0087

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_audio:Landroid/widget/ImageButton;

    const v0, 0x7f0b009c

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_resolution:Landroid/widget/ImageButton;

    const v0, 0x7f0b008c

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_down:Landroid/widget/ImageButton;

    const v0, 0x7f0b03f9

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->txt_start_time:Landroid/widget/TextView;

    const v0, 0x7f0b03cf

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->txt_end_time:Landroid/widget/TextView;

    const v0, 0x7f0b03e4

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f0b0327

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->seekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x64

    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_rewind:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_forward:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_sub:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_audio:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_down:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_resolution:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0419

    .line 30
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 31
    new-instance v4, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v0

    new-instance v4, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$$ExternalSyntheticLambda0;-><init>(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0423

    .line 33
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->volumeSeekBar:Landroid/widget/SeekBar;

    .line 34
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const-string v0, "audio"

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->audioManager:Landroid/media/AudioManager;

    .line 36
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->volumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 37
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->volumeLevel:I

    .line 38
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 39
    iget v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->volumeLevel:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v2, v2, v0

    float-to-int v0, v2

    .line 40
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->volumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f0b007a

    .line 41
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->brightSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0xff

    .line 42
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->brightSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 45
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->brightSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_16

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method private synthetic lambda$initView$2(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_13

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->listTimer()V

    :cond_13
    return-void
.end method

.method private synthetic lambda$listTimer$0()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->maxTime:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_d

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 3
    :cond_d
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->runNextTicker()V

    return-void
.end method

.method private listTimer()V
    .registers 3

    const/16 v0, 0xa

    .line 1
    iput v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->maxTime:I

    .line 2
    new-instance v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    .line 3
    invoke-virtual {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;->run()V

    return-void
.end method

.method private pictureInPictureMode()V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1d

    .line 2
    new-instance v0, Landroid/util/Rational;

    const/16 v1, 0x10

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    .line 3
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->pictureInPictureParams:Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v1, v0}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->pictureInPictureParams:Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    :cond_1d
    return-void
.end method

.method private playEpisode(I)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episodeModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->name:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->series_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->season_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->resume_key:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->txt_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 6
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episodeModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EpisodeModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->contentUrl:Ljava/lang/String;

    goto :goto_7c

    .line 7
    :cond_4c
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v3}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episodeModels:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/EpisodeModel;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episodeModels:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/EpisodeModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/EpisodeModel;->getContainer_extension()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, v3, v4, p1}, Lcom/nettv/livestore/helper/GetSharedInfo;->getEpisodeUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->contentUrl:Ljava/lang/String;

    .line 8
    :goto_7c
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->resume_key:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->getLastPosition(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->last_position:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_95

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->showResumeDlgFragment()V

    goto :goto_ae

    .line 11
    :cond_95
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->contentUrl:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v5}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playVideo(Ljava/lang/String;J)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->listTimer()V

    :goto_ae
    return-void
.end method

.method private playNextEpisode()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episodeModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1a

    .line 2
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    .line 3
    invoke-virtual {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->releasePlayer()V

    .line 4
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playEpisode(I)V

    :cond_1a
    return-void
.end method

.method private playPreviousEpisode()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    if-lez v0, :cond_10

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    .line 3
    invoke-virtual {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->releasePlayer()V

    .line 4
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playEpisode(I)V

    :cond_10
    return-void
.end method

.method private playVideo(Ljava/lang/String;J)V
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    .line 2
    :cond_7
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

    .line 8
    sget-object v0, Lcom/google/android/exoplayer2/Tracks;->EMPTY:Lcom/google/android/exoplayer2/Tracks;

    .line 9
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 10
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 11
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->createMediaSourceFactory()Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 14
    invoke-direct {p0, v0, v1}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->setRenderersFactory(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Z)V

    .line 15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 16
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$PlayerEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$PlayerEventListener;-><init>(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$1;)V

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v2, Lcom/google/android/exoplayer2/util/EventLogger;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/util/EventLogger;-><init>()V

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 23
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 24
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->play()V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-eqz p1, :cond_ae

    .line 25
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 26
    :cond_ae
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    invoke-virtual {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->updateProgressBar()V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b8} :catch_b8

    :catch_b8
    return-void
.end method

.method private runNextTicker()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->maxTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->maxTime:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private seekToForward()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_3c

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v2

    .line 4
    iget v4, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->duration:I

    add-int/lit8 v4, v4, 0xa

    iput v4, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->duration:I

    int-to-long v5, v4

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    cmp-long v9, v2, v5

    if-gez v9, :cond_26

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const-wide/16 v4, 0xa

    sub-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    goto :goto_2f

    .line 6
    :cond_26
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    int-to-long v3, v4

    mul-long v3, v3, v7

    add-long/2addr v3, v0

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    :goto_2f
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->duration:I

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->updateProgressBar()V

    :cond_3c
    return-void
.end method

.method private seekToRewind()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_35

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    .line 3
    iget v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->duration:I

    add-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->duration:I

    int-to-long v3, v2

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    cmp-long v7, v0, v3

    if-gez v7, :cond_1f

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    goto :goto_28

    :cond_1f
    int-to-long v2, v2

    mul-long v2, v2, v5

    sub-long/2addr v0, v2

    .line 5
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    :goto_28
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->duration:I

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->updateProgressBar()V

    :cond_35
    return-void
.end method

.method private setRenderersFactory(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Z)V
    .registers 3

    .line 1
    invoke-static {p0, p2}, Lcom/nettv/livestore/utils/DemoUtil;->buildRenderersFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/RenderersFactory;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setRenderersFactory(Lcom/google/android/exoplayer2/RenderersFactory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-void
.end method

.method private showAudioTracksList()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getAudio_track()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_25

    if-ne v3, v1, :cond_23

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTypeSupport(I)I

    move-result v0

    if-nez v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x1

    .line 6
    :goto_26
    new-instance v3, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    iget-object v5, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

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

    goto :goto_4c

    .line 11
    :cond_3b
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 12
    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getNo_audio()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_4c
    return-void
.end method

.method private showEpisodesDlgFragment()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "episode_group"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episodeModels:Ljava/util/List;

    iget v3, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->season_pos:I

    iget v4, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    invoke-static {v1, v3, v4}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->newInstance(Ljava/util/List;II)Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episodeDlgFragment:Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$5;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$5;-><init>(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;->setOnEpisodeItemListener(Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment$OnEpisodeItemListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episodeDlgFragment:Lcom/nettv/livestore/dlgfragment/EpisodeDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showExitDlgFragment()V
    .registers 7

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

    if-eqz v3, :cond_15

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getStop_playback()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getPlayback_description()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/WordModels;->getStr_yes()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v5}, Lcom/nettv/livestore/models/WordModels;->getNo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$2;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$2;-><init>(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->setOkButtonClickListener(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showPlayErrorDlgFragment()V
    .registers 6

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

    if-eqz v3, :cond_15

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPlay_back_error()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getPlay_back_error_description()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->errorDlgFragment:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$3;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$3;-><init>(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->setOkButtonClickListener(Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$OkButtonClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->errorDlgFragment:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showResumeDlgFragment()V
    .registers 7

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

    if-eqz v3, :cond_15

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getResume()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getResume_plyaback_from_ast_position()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/WordModels;->getStr_yes()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v5}, Lcom/nettv/livestore/models/WordModels;->getNo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->resumeDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$1;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer$1;-><init>(Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->setOkButtonClickListener(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->resumeDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showSubTracksList()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getSubtitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 4
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_24

    if-ne v4, v3, :cond_23

    .line 5
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTypeSupport(I)I

    move-result v0

    if-nez v0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 6
    :cond_24
    :goto_24
    new-instance v0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    iget-object v4, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-direct {v0, p0, v2, v4, v3}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/google/android/exoplayer2/Player;I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->setAllowAdaptiveSelections(Z)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->build()Landroid/app/Dialog;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_47

    .line 10
    :cond_36
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 11
    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getNo_subtitle()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_47
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_f

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_f
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_7e

    goto/16 :goto_7c

    .line 2
    :sswitch_a
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->showSubTracksList()V

    goto/16 :goto_7c

    .line 3
    :sswitch_f
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->listTimer()V

    .line 5
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->seekToRewind()V

    goto :goto_7c

    .line 6
    :sswitch_1d
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_7c

    .line 7
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getResizeMode()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_36

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeMode(I)V

    goto :goto_7c

    .line 10
    :cond_36
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeMode(I)V

    goto :goto_7c

    .line 11
    :sswitch_3c
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_7c

    .line 12
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_play:Landroid/widget/ImageButton;

    const v0, 0x7f080133

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7c

    .line 15
    :cond_54
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->btn_play:Landroid/widget/ImageButton;

    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7c

    .line 17
    :sswitch_63
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->listTimer()V

    .line 19
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->seekToForward()V

    goto :goto_7c

    .line 20
    :sswitch_71
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->showEpisodesDlgFragment()V

    goto :goto_7c

    .line 21
    :sswitch_75
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->showExitDlgFragment()V

    goto :goto_7c

    .line 22
    :sswitch_79
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->showAudioTracksList()V

    :cond_7c
    :goto_7c
    return-void

    nop

    :sswitch_data_7e
    .sparse-switch
        0x7f0b0087 -> :sswitch_79
        0x7f0b0088 -> :sswitch_75
        0x7f0b008c -> :sswitch_71
        0x7f0b008e -> :sswitch_63
        0x7f0b0098 -> :sswitch_3c
        0x7f0b009c -> :sswitch_1d
        0x7f0b009e -> :sswitch_f
        0x7f0b00a1 -> :sswitch_a
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0032

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_26

    .line 7
    new-instance p1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {p1}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->pictureInPictureParams:Landroid/app/PictureInPictureParams$Builder;

    .line 8
    :cond_26
    invoke-direct {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->initView()V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "season_pos"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->season_pos:I

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "series_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->series_name:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "season_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->season_name:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceISM3U()Z

    move-result p1

    if-eqz p1, :cond_71

    .line 14
    invoke-static {}, Lcom/nettv/livestore/helper/RealmController;->with()Lcom/nettv/livestore/helper/RealmController;

    move-result-object p1

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->series_name:Ljava/lang/String;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->season_name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/helper/RealmController;->getEpisodesBySeason(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episodeModels:Ljava/util/List;

    goto :goto_79

    .line 15
    :cond_71
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceEpisodeModels()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episodeModels:Ljava/util/List;

    .line 16
    :goto_79
    invoke-static {p0}, Lcom/nettv/livestore/utils/DemoUtil;->getDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 17
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 18
    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleEnable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 20
    iget p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->episode_position:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playEpisode(I)V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_13

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    if-eqz v0, :cond_10

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->onPause()V

    .line 5
    :cond_10
    invoke-virtual {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->releasePlayer()V

    :cond_13
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b007a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_62

    const v1, 0x7f0b0327

    if-eq v0, v1, :cond_28

    const p1, 0x7f0b0423

    if-eq v0, p1, :cond_16

    goto/16 :goto_bb

    .line 2
    :cond_16
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->audioManager:Landroid/media/AudioManager;

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    mul-int p1, p1, p2

    .line 3
    div-int/lit8 p1, p1, 0x64

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p2, p3, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_bb

    .line 5
    :cond_28
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_bb

    if-eqz p3, :cond_bb

    .line 6
    iget-object p3, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    int-to-long p1, p2

    mul-long v0, v0, p1

    const-wide/16 p1, 0x64

    .line 9
    div-long/2addr v0, p1

    long-to-int p1, v0

    .line 10
    iget-object p2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    int-to-long v0, p1

    invoke-interface {p2, v0, v1}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->txt_start_time:Landroid/widget/TextView;

    const-string p2, ""

    .line 12
    invoke-static {p2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 13
    invoke-static {v0, v1}, Lcom/nettv/livestore/utils/Utils;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bb

    .line 14
    :cond_62
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p1, p3, :cond_bb

    .line 15
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_98

    .line 16
    iget-boolean p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->is_system_setting:Z

    if-nez p1, :cond_bb

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->is_system_setting:Z

    .line 18
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "package:"

    .line 19
    invoke-static {p2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_bb

    .line 22
    :cond_98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "screen_brightness_mode"

    invoke-static {p1, p3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "screen_brightness"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    int-to-float p2, p2

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p2, v0

    .line 26
    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 27
    invoke-virtual {p1, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_bb
    :goto_bb
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_13

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    if-eqz v0, :cond_10

    .line 4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->onPause()V

    .line 5
    :cond_10
    invoke-virtual {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->releasePlayer()V

    :cond_13
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0327

    if-ne v0, v1, :cond_3e

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {p1, v0, v1}, Lcom/nettv/livestore/utils/Utils;->progressToTimer(IJ)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->txt_start_time:Landroid/widget/TextView;

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

    :cond_3e
    return-void
.end method

.method public final onUserLeaveHint()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 2
    invoke-virtual {p0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->releasePlayer()V

    return-void
.end method

.method public releasePlayer()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_6d

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->resume_key:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->checkAddedRecent(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    cmp-long v4, v0, v2

    if-lez v4, :cond_60

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_60

    .line 4
    new-instance v0, Lcom/nettv/livestore/models/ResumeModel;

    invoke-direct {v0}, Lcom/nettv/livestore/models/ResumeModel;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->resume_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/models/ResumeModel;->setName(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nettv/livestore/models/ResumeModel;->setLast_position(J)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/nettv/livestore/models/ResumeModel;->setPro(I)V

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSeriesResumeModel()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 9
    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceSeriesResumeModel(Ljava/util/List;)V

    .line 11
    :cond_60
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 12
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    :cond_6d
    return-void
.end method

.method public updateProgressBar()V
    .registers 5

    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/SeriesMobilePlayer;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
