.class final Landroidx/leanback/app/DetailsBackgroundVideoHelper;
.super Ljava/lang/Object;
.source "DetailsBackgroundVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;
    }
.end annotation


# static fields
.field private static final BACKGROUND_CROSS_FADE_DURATION:J = 0x1f4L

.field private static final CROSSFADE_DELAY:J = 0x3e8L


# instance fields
.field public mBackgroundAnimator:Landroid/animation/ValueAnimator;

.field public mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundDrawableVisible:Z

.field public mControlStateCallback:Landroidx/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;

.field private mCurrentState:I

.field private final mDetailsParallax:Landroidx/leanback/widget/DetailsParallax;

.field private mParallaxEffect:Landroidx/leanback/widget/ParallaxEffect;

.field private mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mCurrentState:I

    .line 3
    new-instance v1, Landroidx/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;

    invoke-direct {v1, p0}, Landroidx/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;-><init>(Landroidx/leanback/app/DetailsBackgroundVideoHelper;)V

    iput-object v1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mControlStateCallback:Landroidx/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    .line 5
    iput-object p1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mDetailsParallax:Landroidx/leanback/widget/DetailsParallax;

    .line 6
    iput-object p2, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawableVisible:Z

    const/16 v2, 0xff

    .line 8
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 9
    iget-object p2, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mParallaxEffect:Landroidx/leanback/widget/ParallaxEffect;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/DetailsParallax;->getOverviewRowTop()Landroidx/leanback/widget/Parallax$IntProperty;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/leanback/widget/Parallax$PropertyMarkerValue;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {p2, v3}, Landroidx/leanback/widget/Parallax$IntProperty;->atFraction(F)Landroidx/leanback/widget/Parallax$PropertyMarkerValue;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/Parallax$IntProperty;->atFraction(F)Landroidx/leanback/widget/Parallax$PropertyMarkerValue;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/Parallax;->addEffect([Landroidx/leanback/widget/Parallax$PropertyMarkerValue;)Landroidx/leanback/widget/ParallaxEffect;

    move-result-object p2

    new-instance v0, Landroidx/leanback/app/DetailsBackgroundVideoHelper$1;

    invoke-direct {v0, p0}, Landroidx/leanback/app/DetailsBackgroundVideoHelper$1;-><init>(Landroidx/leanback/app/DetailsBackgroundVideoHelper;)V

    .line 12
    invoke-virtual {p2, v0}, Landroidx/leanback/widget/ParallaxEffect;->target(Landroidx/leanback/widget/ParallaxTarget;)Landroidx/leanback/widget/ParallaxEffect;

    move-result-object p2

    iput-object p2, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mParallaxEffect:Landroidx/leanback/widget/ParallaxEffect;

    .line 13
    invoke-virtual {p1}, Landroidx/leanback/widget/RecyclerViewParallax;->updateValues()V

    :goto_0
    return-void
.end method

.method private applyState()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mCurrentState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v2, v2}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(ZZ)V

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_4

    .line 4
    iget-object v1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mControlStateCallback:Landroidx/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;

    invoke-virtual {v0, v1}, Landroidx/leanback/media/PlaybackGlue;->removePlayerCallback(Landroidx/leanback/media/PlaybackGlue$PlayerCallback;)V

    .line 5
    iget-object v0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackGlue;->pause()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackGlue;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->internalStartPlayback()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    iget-object v1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mControlStateCallback:Landroidx/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;

    invoke-virtual {v0, v1}, Landroidx/leanback/media/PlaybackGlue;->addPlayerCallback(Landroidx/leanback/media/PlaybackGlue$PlayerCallback;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0, v2, v2}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(ZZ)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final crossFadeBackgroundToVideo(ZZ)V
    .locals 5

    xor-int/lit8 v0, p1, 0x1

    .line 1
    iget-boolean v1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawableVisible:Z

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, v0, :cond_3

    if-eqz p2, :cond_2

    .line 2
    iget-object p2, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    iput-object v3, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 5
    :cond_0
    iget-object p2, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 6
    :cond_1
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    return-void

    .line 7
    :cond_3
    iput-boolean v0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawableVisible:Z

    .line 8
    iget-object v0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10
    iput-object v3, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 11
    :cond_6
    iget-object v1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_7

    return-void

    :cond_7
    if-eqz p2, :cond_9

    if-eqz p1, :cond_8

    const/4 v2, 0x0

    .line 12
    :cond_8
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_9
    const/4 p1, 0x2

    new-array p1, p1, [F

    aput v3, p1, v4

    const/4 p2, 0x1

    aput v0, p1, p2

    .line 13
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1f4

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    iget-object p1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroidx/leanback/app/DetailsBackgroundVideoHelper$3;

    invoke-direct {p2, p0}, Landroidx/leanback/app/DetailsBackgroundVideoHelper$3;-><init>(Landroidx/leanback/app/DetailsBackgroundVideoHelper;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 16
    iget-object p1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroidx/leanback/app/DetailsBackgroundVideoHelper$4;

    invoke-direct {p2, p0}, Landroidx/leanback/app/DetailsBackgroundVideoHelper$4;-><init>(Landroidx/leanback/app/DetailsBackgroundVideoHelper;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 17
    iget-object p1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final internalStartPlayback()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackGlue;->play()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mDetailsParallax:Landroidx/leanback/widget/DetailsParallax;

    invoke-virtual {v0}, Landroidx/leanback/widget/RecyclerViewParallax;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroidx/leanback/app/DetailsBackgroundVideoHelper$2;

    invoke-direct {v1, p0}, Landroidx/leanback/app/DetailsBackgroundVideoHelper$2;-><init>(Landroidx/leanback/app/DetailsBackgroundVideoHelper;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final isVideoVisible()Z
    .locals 2

    iget v0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final setPlaybackGlue(Landroidx/leanback/media/PlaybackGlue;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mControlStateCallback:Landroidx/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;

    invoke-virtual {v0, v1}, Landroidx/leanback/media/PlaybackGlue;->removePlayerCallback(Landroidx/leanback/media/PlaybackGlue$PlayerCallback;)V

    .line 3
    :cond_0
    iput-object p1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    .line 4
    invoke-direct {p0}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->applyState()V

    return-void
.end method

.method public final stopParallax()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mDetailsParallax:Landroidx/leanback/widget/DetailsParallax;

    iget-object v1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mParallaxEffect:Landroidx/leanback/widget/ParallaxEffect;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/Parallax;->removeEffect(Landroidx/leanback/widget/ParallaxEffect;)V

    return-void
.end method

.method public final updateState(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mCurrentState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->mCurrentState:I

    .line 3
    invoke-direct {p0}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->applyState()V

    return-void
.end method
