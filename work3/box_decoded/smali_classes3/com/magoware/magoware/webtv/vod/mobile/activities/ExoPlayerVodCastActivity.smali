.class public Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ExoPlayerVodCastActivity.java"


# static fields
.field public static final MOVIE_URL:Ljava/lang/String; = "movieUrl"

.field public static final SPHERICAL_STEREO_MODE_EXTRA:Ljava/lang/String; = "spherical_stereo_mode"

.field public static final SPHERICAL_STEREO_MODE_LEFT_RIGHT:Ljava/lang/String; = "left_right"

.field public static final SPHERICAL_STEREO_MODE_MONO:Ljava/lang/String; = "mono"

.field public static final SPHERICAL_STEREO_MODE_TOP_BOTTOM:Ljava/lang/String; = "top_bottom"

.field public static final URL:Ljava/lang/String; = " "


# instance fields
.field private final TAG:Ljava/lang/String;

.field private activityStartTime:J

.field public card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

.field private castContext:Lcom/google/android/gms/cast/framework/CastContext;

.field private castControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

.field private exitMovie:Landroid/app/AlertDialog$Builder;

.field private localPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private mediaRouteButton:Landroidx/mediarouter/app/MediaRouteButton;

.field private mediaRouteButtonCast:Landroidx/mediarouter/app/MediaRouteButton;

.field private playerManager:Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;

.field vodSceen:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "ExoPlayerVodCastActivity exo cast "

    .line 64
    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->TAG:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->vodSceen:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;)J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->activityStartTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;)Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->playerManager:Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;

    return-object p0
.end method

.method private configureSubtitleView()V
    .locals 9

    const v0, 0x7f0b0281

    .line 193
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 197
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 198
    :goto_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/16 v0, 0xff

    const/16 v1, 0x2b

    .line 207
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 208
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/JosefinSans-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 209
    new-instance v0, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 214
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->localPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/text/CaptionStyleCompat;)V

    .line 215
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->localPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getSubtitleView()Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    const v1, 0x3d5a511a    # 0.0533f

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(F)V

    return-void
.end method

.method static synthetic lambda$exitMovie$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 181
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private savePosition()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->playerManager:Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->savePosition()V

    .line 189
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->finish()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 250
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->playerManager:Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public exitMovie()V
    .locals 3

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 174
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    const v1, 0x7f150002

    invoke-direct {v0, p0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->exitMovie:Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 176
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->exitMovie:Landroid/app/AlertDialog$Builder;

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->exitMovie:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1403d4

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802eb

    .line 179
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1402e2

    .line 180
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$ExoPlayerVodCastActivity$VfZ6ukZZykeBzD84NTwxf7_VKiU;->INSTANCE:Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$ExoPlayerVodCastActivity$VfZ6ukZZykeBzD84NTwxf7_VKiU;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f14049c

    .line 182
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$ExoPlayerVodCastActivity$X-IKhU6iQz2tFWT4f8n6dTwop7U;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$ExoPlayerVodCastActivity$X-IKhU6iQz2tFWT4f8n6dTwop7U;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 184
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public synthetic lambda$exitMovie$2$ExoPlayerVodCastActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->savePosition()V

    return-void
.end method

.method public synthetic lambda$onCreate$0$ExoPlayerVodCastActivity(Landroid/view/View;)V
    .locals 0

    .line 137
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->playerManager:Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->onClosedCaptionsClicked()V

    :cond_0
    return-void
.end method

.method public logLoop()V
    .locals 7

    .line 256
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOG_EVENT_INTERVAL:Ljava/lang/String;

    const/16 v2, 0x258

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->vodSceen:Ljava/util/Timer;

    new-instance v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity$1;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity$1;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    move-wide v3, v5

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->localPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->isControllerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->localPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->exitMovie()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "spherical_stereo_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 92
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->castContext:Lcom/google/android/gms/cast/framework/CastContext;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const p1, 0x7f0e01fe

    .line 106
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->setContentView(I)V

    const p1, 0x7f0b03ad

    .line 108
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->localPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 109
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->requestFocus()Z

    const/4 p1, 0x0

    if-eqz v0, :cond_3

    const-string v1, "mono"

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "top_bottom"

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "left_right"

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->localPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/spherical/SphericalGLSurfaceView;->setDefaultStereoMode(I)V

    goto :goto_1

    :cond_2
    const p1, 0x7f14017b

    .line 120
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 121
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->finish()V

    return-void

    :cond_3
    :goto_1
    const v0, 0x7f0b0132

    .line 127
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->castControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 129
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 130
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "movieJson"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    const-class v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 133
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 134
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->configureSubtitleView()V

    :cond_4
    const v0, 0x7f0b0281

    .line 136
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$ExoPlayerVodCastActivity$JcCpo_5ckqt-qCFqi_UmPX5FAZ4;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$ExoPlayerVodCastActivity$JcCpo_5ckqt-qCFqi_UmPX5FAZ4;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->activityStartTime:J

    .line 142
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->logLoop()V

    const v0, 0x7f0b03f0

    .line 144
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/app/MediaRouteButton;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->mediaRouteButton:Landroidx/mediarouter/app/MediaRouteButton;

    .line 145
    invoke-virtual {v0, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->mediaRouteButton:Landroidx/mediarouter/app/MediaRouteButton;

    invoke-static {p0, v0}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->setUpMediaRouteButton(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V

    const v0, 0x7f0b03f1

    .line 148
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/app/MediaRouteButton;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->mediaRouteButtonCast:Landroidx/mediarouter/app/MediaRouteButton;

    .line 149
    invoke-virtual {v0, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->mediaRouteButtonCast:Landroidx/mediarouter/app/MediaRouteButton;

    invoke-static {p0, p1}, Lcom/google/android/gms/cast/framework/CastButtonFactory;->setUpMediaRouteButton(Landroid/content/Context;Landroidx/mediarouter/app/MediaRouteButton;)V

    return-void

    :catch_0
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_6

    .line 96
    instance-of v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    if-eqz v1, :cond_5

    const p1, 0x7f0e005b

    .line 97
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->setContentView(I)V

    return-void

    .line 100
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_2

    .line 103
    :cond_6
    throw p1
.end method

.method public onPause()V
    .locals 1

    .line 237
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 238
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->castContext:Lcom/google/android/gms/cast/framework/CastContext;

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->playerManager:Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->release()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 220
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const-string v0, "ExoPlayerVodCastActivity exo cast "

    const-string v1, "ExoPlayerVodCastActivity exo cast onResume"

    .line 221
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->castContext:Lcom/google/android/gms/cast/framework/CastContext;

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->localPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->castControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 228
    invoke-static {v1, v2, p0, v0, v3}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->createPlayerManager(Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/google/android/exoplayer2/ui/PlayerControlView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastContext;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->playerManager:Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;

    return-void
.end method
