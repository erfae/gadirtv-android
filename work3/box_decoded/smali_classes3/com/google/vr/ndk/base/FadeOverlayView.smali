.class Lcom/google/vr/ndk/base/FadeOverlayView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field static final AUTO_FADE_DURATION_MILLIS:J = 0x15eL

.field static final AUTO_FADE_QUICK_START_DELAY_MILLIS:I = 0xc8

.field static final AUTO_FADE_START_DELAY_MILLIS:J = 0x3e8L

.field private static final DEBUG:Z = false

.field static final DEFAULT_BACKGROUND_COLOR:I = -0x1000000

.field private static final MSG_AUTO_FADE:I = 0x49c1485

.field private static final TAG:Ljava/lang/String; = "FadeOverlayView"


# instance fields
.field private final autoFadeEnabled:Z

.field private final autoFadeHandler:Landroid/os/Handler;

.field private fadeDurationMillis:J

.field private fadeStartOpacity:F

.field private fadeStartTimeMillis:J

.field private fadeType:I

.field private final fadeUpdateRunnable:Ljava/lang/Runnable;

.field private flushAutoFadeOnVisible:Z

.field private visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    .line 3
    new-instance p1, Lcom/google/vr/ndk/base/FadeOverlayView$1;

    invoke-direct {p1, p0}, Lcom/google/vr/ndk/base/FadeOverlayView$1;-><init>(Lcom/google/vr/ndk/base/FadeOverlayView;)V

    iput-object p1, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeUpdateRunnable:Ljava/lang/Runnable;

    .line 4
    new-instance p1, Lcom/google/vr/ndk/base/FadeOverlayView$2;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/google/vr/ndk/base/FadeOverlayView$2;-><init>(Lcom/google/vr/ndk/base/FadeOverlayView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeHandler:Landroid/os/Handler;

    const/high16 p1, -0x1000000

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/vr/ndk/base/FadeOverlayView;->setBackgroundColor(I)V

    .line 7
    iput-boolean p2, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/ndk/base/FadeOverlayView;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->updateFade()V

    return-void
.end method

.method private endFade()V
    .locals 3

    .line 65
    iget v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 67
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->setVisibility(I)V

    .line 68
    iget v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    if-ne v0, v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->setAlpha(F)V

    .line 69
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 70
    iput v2, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    .line 71
    iput-boolean v2, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->flushAutoFadeOnVisible:Z

    return-void
.end method

.method private removeFadeCallbacks()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeHandler:Landroid/os/Handler;

    const v1, 0x49c1485

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateFade()V
    .locals 9

    .line 73
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeStartTimeMillis:J

    sub-long/2addr v0, v2

    long-to-float v2, v0

    .line 74
    iget-wide v3, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeDurationMillis:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    .line 75
    iget v3, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    neg-float v2, v2

    .line 77
    :cond_0
    iget v3, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeStartOpacity:F

    add-float/2addr v3, v2

    const/4 v2, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 78
    invoke-virtual {p0, v3}, Lcom/google/vr/ndk/base/FadeOverlayView;->setAlpha(F)V

    .line 79
    iget-wide v6, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeDurationMillis:J

    cmp-long v8, v0, v6

    if-gez v8, :cond_1

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    .line 80
    invoke-virtual {p0, v6}, Lcom/google/vr/ndk/base/FadeOverlayView;->setVisibility(I)V

    .line 81
    :cond_1
    iget-wide v6, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeDurationMillis:J

    cmp-long v8, v0, v6

    if-gez v8, :cond_4

    iget v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    if-ne v0, v4, :cond_2

    cmpg-float v1, v3, v2

    if-lez v1, :cond_4

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    cmpl-float v0, v3, v5

    if-ltz v0, :cond_3

    goto :goto_0

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/vr/ndk/base/FadeOverlayView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 82
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->endFade()V

    return-void
.end method


# virtual methods
.method public flushAutoFade()V
    .locals 4

    .line 44
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeHandler:Landroid/os/Handler;

    const v1, 0x49c1485

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 49
    :cond_1
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->visible:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->flushAutoFadeOnVisible:Z

    :cond_2
    return-void
.end method

.method getFadeType()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    return v0
.end method

.method isVisible()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->visible:Z

    return v0
.end method

.method public onInvisible()V
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->visible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->visible:Z

    .line 26
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeEnabled:Z

    if-eqz v0, :cond_1

    .line 27
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->removeFadeCallbacks()V

    const/4 v0, 0x2

    .line 28
    iput v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    .line 29
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->endFade()V

    :cond_1
    return-void
.end method

.method public onVisible()V
    .locals 4

    .line 31
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->visible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->visible:Z

    .line 34
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeEnabled:Z

    if-eqz v1, :cond_2

    .line 35
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->removeFadeCallbacks()V

    .line 36
    iget-object v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->autoFadeHandler:Landroid/os/Handler;

    const v1, 0x49c1485

    .line 37
    iget-boolean v2, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->flushAutoFadeOnVisible:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0xc8

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x3e8

    .line 40
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 41
    :cond_2
    iput v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    .line 42
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->endFade()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->removeFadeCallbacks()V

    const/4 p1, 0x1

    .line 57
    iput p1, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    .line 58
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->endFade()V

    :cond_1
    return-void
.end method

.method public startFade(IJI)V
    .locals 2

    .line 9
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->isEnabled()Z

    move-result v0

    const-string v1, "FadeOverlayView"

    if-nez v0, :cond_0

    const-string p1, "Ignoring fade request while disabled."

    .line 10
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->visible:Z

    if-nez v0, :cond_1

    const-string p1, "Ignoring fade request while invisible."

    .line 13
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 15
    :cond_1
    invoke-virtual {p0, p4}, Lcom/google/vr/ndk/base/FadeOverlayView;->setBackgroundColor(I)V

    .line 16
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->removeFadeCallbacks()V

    .line 17
    iput p1, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeType:I

    .line 18
    iput-wide p2, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeDurationMillis:J

    .line 19
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeStartTimeMillis:J

    .line 20
    invoke-virtual {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/google/vr/ndk/base/FadeOverlayView;->fadeStartOpacity:F

    .line 21
    invoke-direct {p0}, Lcom/google/vr/ndk/base/FadeOverlayView;->updateFade()V

    return-void
.end method
