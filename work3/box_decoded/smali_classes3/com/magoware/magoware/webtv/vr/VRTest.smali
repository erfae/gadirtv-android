.class public Lcom/magoware/magoware/webtv/vr/VRTest;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VRTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/vr/VRTest$MyVrVideoEventListener;
    }
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field playPauseToggle:Landroid/widget/ImageButton;

.field seekBar:Landroid/widget/SeekBar;

.field statusText:Landroid/widget/TextView;

.field vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

.field vrVideoViewUi:Lcom/magoware/magoware/webtv/vr/VrVideoViewUi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "VRTest "

    .line 25
    iput-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/vr/VRTest;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vr/VRTest;->setupVrVideoViewUi()V

    return-void
.end method

.method private setupVrVideoView()V
    .locals 4

    const v0, 0x7f0b06c9

    .line 53
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vr/VRTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    .line 54
    new-instance v0, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;-><init>()V

    const/4 v1, 0x1

    .line 55
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;->inputFormat:I

    .line 56
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;->inputType:I

    .line 58
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    invoke-virtual {v2, v1}, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->setTouchTrackingEnabled(Z)V

    .line 59
    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 60
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 61
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    new-instance v2, Lcom/magoware/magoware/webtv/vr/VRTest$MyVrVideoEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/magoware/magoware/webtv/vr/VRTest$MyVrVideoEventListener;-><init>(Lcom/magoware/magoware/webtv/vr/VRTest;Lcom/magoware/magoware/webtv/vr/VRTest$1;)V

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->setEventListener(Lcom/google/vr/sdk/widgets/video/VrVideoEventListener;)V

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    const-string v2, "https://storage.googleapis.com/exoplayer-test-media-1/360/congo.mp4"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->loadVideo(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/VrVideoView$Options;)V

    .line 64
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->playVideo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setupVrVideoViewUi()V
    .locals 7

    .line 72
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 73
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->getCurrentPosition()J

    move-result-wide v2

    const v0, 0x7f0b06f1

    .line 74
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vr/VRTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/vr/VrVideoViewUi;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoViewUi:Lcom/magoware/magoware/webtv/vr/VrVideoViewUi;

    const v0, 0x7f0b059a

    .line 75
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vr/VRTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->seekBar:Landroid/widget/SeekBar;

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 77
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->seekBar:Landroid/widget/SeekBar;

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const v0, 0x7f0b05ff

    .line 78
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vr/VRTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->statusText:Landroid/widget/TextView;

    .line 79
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/magoware/magoware/webtv/vr/VRTest$1;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/vr/VRTest$1;-><init>(Lcom/magoware/magoware/webtv/vr/VRTest;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 97
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/magoware/magoware/webtv/vr/VRTest$2;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vr/VRTest$2;-><init>(Lcom/magoware/magoware/webtv/vr/VRTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f0b04fd

    .line 116
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vr/VRTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->playPauseToggle:Landroid/widget/ImageButton;

    .line 117
    new-instance v1, Lcom/magoware/magoware/webtv/vr/VRTest$3;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vr/VRTest$3;-><init>(Lcom/magoware/magoware/webtv/vr/VRTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 48
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->pauseVideo()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0046

    .line 34
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vr/VRTest;->setContentView(I)V

    .line 36
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vr/VRTest;->setupVrVideoView()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 42
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->pauseVideo()V

    return-void
.end method
