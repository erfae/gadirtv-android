.class public Lcom/nettv/livestore/activities/CatchUpPlayerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CatchUpPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nettv/livestore/activities/CatchUpPlayerActivity$PlayerEventListener;
    }
.end annotation


# static fields
.field private static final KEY_TRACK_SELECTION_PARAMETERS:Ljava/lang/String; = "track_selection_parameters"


# instance fields
.field public btn_back:Landroid/widget/ImageButton;

.field public btn_forward:Landroid/widget/ImageButton;

.field public btn_next:Landroid/widget/ImageButton;

.field public btn_play:Landroid/widget/ImageButton;

.field public btn_previous:Landroid/widget/ImageButton;

.field public btn_rewind:Landroid/widget/ImageButton;

.field public catchUpEpgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CatchUpEpg;",
            ">;"
        }
    .end annotation
.end field

.field public content_url:Ljava/lang/String;

.field public currentEpg:Lcom/nettv/livestore/models/CatchUpEpg;

.field public dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field public duration:I

.field public errorDlgFragment:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;

.field public error_count:I

.field public exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

.field public handler:Landroid/os/Handler;

.field public hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

.field public image_forward:Landroid/widget/ImageView;

.field public image_rewind:Landroid/widget/ImageView;

.field public ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mUpdateTimeTask:Ljava/lang/Runnable;

.field public maxTime:I

.field public player:Lcom/google/android/exoplayer2/ExoPlayer;

.field public playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public program_position:I

.field public seekBar:Landroid/widget/SeekBar;

.field public stream_id:Ljava/lang/String;

.field public trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

.field public txt_end_time:Landroid/widget/TextView;

.field public txt_name:Landroid/widget/TextView;

.field public txt_start_time:Landroid/widget/TextView;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public static synthetic $r8$lambda$IUItZ8v77vhyNN1yZSDX6BCYNIA(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dSfxVPCKZioxla5djhORsAY4Klg(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->lambda$listTimer$0()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->duration:I

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->handler:Landroid/os/Handler;

    .line 4
    iput v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->program_position:I

    iput v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->error_count:I

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->content_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->stream_id:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 7
    new-instance v0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$2;-><init>(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$100(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->releaseMediaPlayer()V

    return-void
.end method

.method public static synthetic access$200(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->playVideo(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->listTimer()V

    return-void
.end method

.method public static synthetic access$400(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->showPlayErrorDlgFragment()V

    return-void
.end method

.method public static synthetic access$500(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->playCatchUp(I)V

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

    iget-object v2, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->setDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    move-result-object v0

    return-object v0
.end method

.method private getControlButtonFocus()Z
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_previous:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_rewind:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_forward:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_next:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    :goto_2c
    return v0
.end method

.method private initView()V
    .registers 4

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

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeMode(I)V

    const v0, 0x7f0b023d

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0088

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_back:Landroid/widget/ImageButton;

    const v0, 0x7f0b009a

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_previous:Landroid/widget/ImageButton;

    const v0, 0x7f0b009e

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_rewind:Landroid/widget/ImageButton;

    const v0, 0x7f0b0098

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_play:Landroid/widget/ImageButton;

    const v0, 0x7f0b008e

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_forward:Landroid/widget/ImageButton;

    const v0, 0x7f0b0095

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_next:Landroid/widget/ImageButton;

    const v0, 0x7f0b03e4

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->txt_name:Landroid/widget/TextView;

    const v0, 0x7f0b03f9

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->txt_start_time:Landroid/widget/TextView;

    const v0, 0x7f0b03cf

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->txt_end_time:Landroid/widget/TextView;

    const v0, 0x7f0b0327

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0b01d7

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->image_forward:Landroid/widget/ImageView;

    const v0, 0x7f0b01e4

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->image_rewind:Landroid/widget/ImageView;

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 19
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_rewind:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_forward:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_next:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_previous:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_rewind:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 26
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 27
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_forward:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 28
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_next:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 29
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_previous:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 30
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 31
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/SearchActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1b

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->listTimer()V

    goto :goto_20

    .line 5
    :cond_1b
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_20
    return-void
.end method

.method private synthetic lambda$listTimer$0()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->maxTime:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_d

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 3
    :cond_d
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->runNextTicker()V

    return-void
.end method

.method private listTimer()V
    .registers 3

    const/16 v0, 0xa

    .line 1
    iput v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->maxTime:I

    .line 2
    new-instance v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    .line 3
    invoke-virtual {v0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;->run()V

    return-void
.end method

.method private playCatchUp(I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->catchUpEpgList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CatchUpEpg;

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->currentEpg:Lcom/nettv/livestore/models/CatchUpEpg;

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->txt_name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CatchUpEpg;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nettv/livestore/utils/Utils;->decode64String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->currentEpg:Lcom/nettv/livestore/models/CatchUpEpg;

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceServerUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferencePassword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->stream_id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/nettv/livestore/models/CatchUpEpg;->getUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->content_url:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->releaseMediaPlayer()V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->content_url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->playVideo(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->listTimer()V

    return-void
.end method

.method private playVideo(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

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
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->createMediaSourceFactory()Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->setRenderersFactory(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Z)V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 12
    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 13
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v1, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$PlayerEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$PlayerEventListener;-><init>(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;Lcom/nettv/livestore/activities/CatchUpPlayerActivity$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 14
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v1, Lcom/google/android/exoplayer2/util/EventLogger;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/util/EventLogger;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    sget-object v1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    .line 16
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 17
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 19
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->prepare()V

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->play()V

    .line 21
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    invoke-virtual {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->updateProgressBar()V

    return-void
.end method

.method private releaseMediaPlayer()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 5
    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method private runNextTicker()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->maxTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->maxTime:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private seekToForward()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_3c

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v2

    .line 4
    iget v4, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->duration:I

    add-int/lit8 v4, v4, 0x1e

    iput v4, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->duration:I

    int-to-long v5, v4

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    cmp-long v9, v2, v5

    if-gez v9, :cond_26

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const-wide/16 v4, 0x1e

    sub-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    goto :goto_2f

    .line 6
    :cond_26
    iget-object v2, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    int-to-long v3, v4

    mul-long v3, v3, v7

    add-long/2addr v3, v0

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    :goto_2f
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->duration:I

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->updateProgressBar()V

    :cond_3c
    return-void
.end method

.method private seekToRewind()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_35

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    .line 3
    iget v2, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->duration:I

    add-int/lit8 v2, v2, 0x1e

    iput v2, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->duration:I

    int-to-long v3, v2

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    cmp-long v7, v0, v3

    if-gez v7, :cond_1f

    .line 4
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    goto :goto_28

    :cond_1f
    int-to-long v2, v2

    mul-long v2, v2, v5

    sub-long/2addr v0, v2

    .line 5
    iget-object v2, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    :goto_28
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->duration:I

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->updateProgressBar()V

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
    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getStop_playback()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getPlayback_description()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/WordModels;->getStr_yes()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v5}, Lcom/nettv/livestore/models/WordModels;->getNo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$4;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$4;-><init>(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->setOkButtonClickListener(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

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
    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getPlay_back_error()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getPlay_back_error_description()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->errorDlgFragment:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$3;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$3;-><init>(Lcom/nettv/livestore/activities/CatchUpPlayerActivity;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;->setOkButtonClickListener(Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment$OkButtonClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->errorDlgFragment:Lcom/nettv/livestore/dlgfragment/PlayErrorDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_f5

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_e3

    const/16 v1, 0x55

    if-eq v0, v1, :cond_bd

    const/16 v1, 0x59

    if-eq v0, v1, :cond_a3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_92

    packed-switch v0, :pswitch_data_fa

    goto/16 :goto_f5

    .line 3
    :pswitch_22
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_f5

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->listTimer()V

    return v4

    .line 8
    :pswitch_3f
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_5c

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->listTimer()V

    return v4

    .line 13
    :cond_5c
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    .line 15
    :cond_6a
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 16
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_play:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    .line 17
    :pswitch_78
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->getControlButtonFocus()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 18
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    .line 19
    :cond_84
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 20
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_back:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    .line 21
    :cond_92
    :pswitch_92
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_f5

    .line 22
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->image_forward:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->seekToForward()V

    goto :goto_f5

    .line 24
    :cond_a3
    :pswitch_a3
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_b4

    .line 25
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->image_rewind:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->seekToRewind()V

    goto :goto_f5

    .line 27
    :cond_b4
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_previous:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_f5

    return v4

    .line 28
    :cond_bd
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_f5

    .line 29
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 30
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 31
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_play:Landroid/widget/ImageButton;

    const v1, 0x7f080133

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f5

    .line 32
    :cond_d5
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 33
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_play:Landroid/widget/ImageButton;

    const v1, 0x7f080132

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_f5

    .line 34
    :cond_e3
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_f1

    .line 35
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return v4

    .line 36
    :cond_f1
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->showExitDlgFragment()V

    return v3

    .line 37
    :cond_f5
    :goto_f5
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_fa
    .packed-switch 0x13
        :pswitch_78
        :pswitch_3f
        :pswitch_a3
        :pswitch_92
        :pswitch_22
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_70

    goto :goto_6e

    .line 2
    :sswitch_9
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->listTimer()V

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->seekToRewind()V

    goto :goto_6e

    .line 5
    :sswitch_17
    iget p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->program_position:I

    if-lez p1, :cond_6e

    sub-int/2addr p1, v0

    .line 6
    iput p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->program_position:I

    .line 7
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->playCatchUp(I)V

    goto :goto_6e

    .line 8
    :sswitch_22
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_6e

    .line 9
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_play:Landroid/widget/ImageButton;

    const v0, 0x7f080133

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6e

    .line 12
    :cond_3b
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->btn_play:Landroid/widget/ImageButton;

    const v0, 0x7f080132

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6e

    .line 14
    :sswitch_49
    iget p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->program_position:I

    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->catchUpEpgList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_6e

    .line 15
    iget p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->program_position:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->program_position:I

    .line 16
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->playCatchUp(I)V

    goto :goto_6e

    .line 17
    :sswitch_5d
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->listTimer()V

    .line 19
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->seekToForward()V

    goto :goto_6e

    .line 20
    :sswitch_6b
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->showExitDlgFragment()V

    :cond_6e
    :goto_6e
    return-void

    nop

    :sswitch_data_70
    .sparse-switch
        0x7f0b0088 -> :sswitch_6b
        0x7f0b008e -> :sswitch_5d
        0x7f0b0095 -> :sswitch_49
        0x7f0b0098 -> :sswitch_22
        0x7f0b009a -> :sswitch_17
        0x7f0b009e -> :sswitch_9
    .end sparse-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e001e

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance v0, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    .line 6
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->initView()V

    .line 7
    invoke-static {p0}, Lcom/nettv/livestore/utils/DemoUtil;->getDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-eqz p1, :cond_31

    const-string v0, "track_selection_parameters"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    goto :goto_3c

    .line 10
    :cond_31
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 12
    :goto_3c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "position"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->program_position:I

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "stream_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->stream_id:Ljava/lang/String;

    .line 14
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "epg_model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$1;

    invoke-direct {v1}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->catchUpEpgList:Ljava/util/List;

    .line 15
    iget p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->program_position:I

    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->playCatchUp(I)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3

    if-eqz p2, :cond_c

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-direct {p0}, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->listTimer()V

    :cond_c
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_39

    if-eqz p3, :cond_39

    .line 2
    iget-object p3, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    int-to-long p1, p2

    mul-long v0, v0, p1

    const-wide/16 p1, 0x64

    .line 5
    div-long/2addr v0, p1

    long-to-int p1, v0

    .line 6
    iget-object p2, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    int-to-long v0, p1

    invoke-interface {p2, v0, v1}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->txt_start_time:Landroid/widget/TextView;

    const-string p2, ""

    .line 8
    invoke-static {p2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 9
    invoke-static {v0, v1}, Lcom/nettv/livestore/utils/Utils;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_39
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0327

    if-ne v0, v1, :cond_3e

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {p1, v0, v1}, Lcom/nettv/livestore/utils/Utils;->progressToTimer(IJ)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->txt_start_time:Landroid/widget/TextView;

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

.method public updateProgressBar()V
    .registers 5

    iget-object v0, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nettv/livestore/activities/CatchUpPlayerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
