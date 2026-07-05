.class public Landroidx/leanback/app/DetailsFragmentBackgroundController;
.super Ljava/lang/Object;
.source "DetailsFragmentBackgroundController.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public mCanUseHost:Z

.field public mCoverBitmap:Landroid/graphics/Bitmap;

.field public final mFragment:Landroidx/leanback/app/DetailsFragment;

.field public mInitialControlVisible:Z

.field private mLastVideoFragmentForGlueHost:Landroid/app/Fragment;

.field public mParallaxDrawable:Landroidx/leanback/widget/DetailsParallaxDrawable;

.field public mParallaxDrawableMaxOffset:I

.field public mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

.field public mSolidColor:I

.field public mVideoHelper:Landroidx/leanback/app/DetailsBackgroundVideoHelper;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/DetailsFragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mCanUseHost:Z

    .line 3
    iput-boolean v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mInitialControlVisible:Z

    .line 4
    iget-object v0, p1, Landroidx/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroidx/leanback/app/DetailsFragmentBackgroundController;

    if-nez v0, :cond_0

    .line 5
    iput-object p0, p1, Landroidx/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroidx/leanback/app/DetailsFragmentBackgroundController;

    .line 6
    iput-object p1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroidx/leanback/app/DetailsFragment;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Each DetailsFragment is allowed to initialize DetailsFragmentBackgroundController once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public canNavigateToVideoFragment()Z
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public enableParallax()V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawableMaxOffset:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroidx/leanback/app/DetailsFragment;

    invoke-static {v0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$dimen;->lb_details_cover_drawable_parallax_movement:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4
    :cond_0
    new-instance v1, Landroidx/leanback/graphics/FitWidthBitmapDrawable;

    invoke-direct {v1}, Landroidx/leanback/graphics/FitWidthBitmapDrawable;-><init>()V

    .line 5
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 6
    new-instance v3, Landroidx/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;

    sget-object v4, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->PROPERTY_VERTICAL_OFFSET:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v6, v5, v6

    const/4 v6, 0x1

    neg-int v0, v0

    aput v0, v5, v6

    .line 7
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Landroidx/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;-><init>(Ljava/lang/Object;Landroid/animation/PropertyValuesHolder;)V

    .line 8
    invoke-virtual {p0, v1, v2, v3}, Landroidx/leanback/app/DetailsFragmentBackgroundController;->enableParallax(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroidx/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;)V

    return-void
.end method

.method public enableParallax(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroidx/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawable:Landroidx/leanback/widget/DetailsParallaxDrawable;

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    instance-of v1, p1, Landroidx/leanback/graphics/FitWidthBitmapDrawable;

    if-eqz v1, :cond_1

    .line 11
    move-object v1, p1

    check-cast v1, Landroidx/leanback/graphics/FitWidthBitmapDrawable;

    invoke-virtual {v1, v0}, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 12
    :cond_1
    iget v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mSolidColor:I

    if-eqz v0, :cond_2

    instance-of v1, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 13
    move-object v1, p2

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 14
    :cond_2
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    if-nez v0, :cond_4

    .line 15
    new-instance v0, Landroidx/leanback/widget/DetailsParallaxDrawable;

    iget-object v1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroidx/leanback/app/DetailsFragment;

    .line 16
    invoke-static {v1}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroidx/leanback/app/DetailsFragment;

    .line 17
    invoke-virtual {v1}, Landroidx/leanback/app/DetailsFragment;->getParallax()Landroidx/leanback/widget/DetailsParallax;

    move-result-object v3

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/leanback/widget/DetailsParallaxDrawable;-><init>(Landroid/content/Context;Landroidx/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroidx/leanback/widget/ParallaxTarget;)V

    iput-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawable:Landroidx/leanback/widget/DetailsParallaxDrawable;

    .line 18
    iget-object p1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroidx/leanback/app/DetailsFragment;

    .line 19
    iget-object p2, p1, Landroidx/leanback/app/DetailsFragment;->mBackgroundView:Landroid/view/View;

    if-eqz p2, :cond_3

    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 21
    :cond_3
    iput-object v0, p1, Landroidx/leanback/app/DetailsFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    new-instance p1, Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    iget-object p2, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroidx/leanback/app/DetailsFragment;

    .line 23
    invoke-virtual {p2}, Landroidx/leanback/app/DetailsFragment;->getParallax()Landroidx/leanback/widget/DetailsParallax;

    move-result-object p2

    iget-object p3, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawable:Landroidx/leanback/widget/DetailsParallaxDrawable;

    invoke-virtual {p3}, Landroidx/leanback/widget/DetailsParallaxDrawable;->getCoverDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;-><init>(Landroidx/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    return-void

    .line 24
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "enableParallaxDrawable must be called before enableVideoPlayback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final findOrCreateVideoFragment()Landroid/app/Fragment;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroidx/leanback/app/DetailsFragment;

    .line 2
    iget-object v1, v0, Landroidx/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget v2, Landroidx/leanback/R$id;->video_surface_container:I

    .line 4
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5
    iget-object v3, v0, Landroidx/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroidx/leanback/app/DetailsFragmentBackgroundController;

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 7
    iget-object v3, v0, Landroidx/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroidx/leanback/app/DetailsFragmentBackgroundController;

    .line 8
    invoke-virtual {v3}, Landroidx/leanback/app/DetailsFragmentBackgroundController;->onCreateVideoFragment()Landroid/app/Fragment;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 10
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 11
    iget-boolean v1, v0, Landroidx/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroidx/leanback/app/DetailsFragment$12;

    invoke-direct {v2, v0}, Landroidx/leanback/app/DetailsFragment$12;-><init>(Landroidx/leanback/app/DetailsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    move-object v1, v3

    .line 13
    :cond_2
    iput-object v1, v0, Landroidx/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    :goto_0
    return-object v1
.end method

.method public final getBottomDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawable:Landroidx/leanback/widget/DetailsParallaxDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/leanback/widget/DetailsParallaxDrawable;->getBottomDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getCoverBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mCoverBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getCoverDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawable:Landroidx/leanback/widget/DetailsParallaxDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/leanback/widget/DetailsParallaxDrawable;->getCoverDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getParallaxDrawableMaxOffset()I
    .locals 1

    iget v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawableMaxOffset:I

    return v0
.end method

.method public final getPlaybackGlue()Landroidx/leanback/media/PlaybackGlue;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    return-object v0
.end method

.method public final getSolidColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mSolidColor:I

    return v0
.end method

.method public onCreateGlueHost()Landroidx/leanback/media/PlaybackGlueHost;
    .locals 2

    new-instance v0, Landroidx/leanback/app/VideoFragmentGlueHost;

    invoke-virtual {p0}, Landroidx/leanback/app/DetailsFragmentBackgroundController;->findOrCreateVideoFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/leanback/app/VideoFragment;

    invoke-direct {v0, v1}, Landroidx/leanback/app/VideoFragmentGlueHost;-><init>(Landroidx/leanback/app/VideoFragment;)V

    return-object v0
.end method

.method public onCreateVideoFragment()Landroid/app/Fragment;
    .locals 1

    new-instance v0, Landroidx/leanback/app/VideoFragment;

    invoke-direct {v0}, Landroidx/leanback/app/VideoFragment;-><init>()V

    return-object v0
.end method

.method public final onStart()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mCanUseHost:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mCanUseHost:Z

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/app/DetailsFragmentBackgroundController;->onCreateGlueHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v1

    .line 5
    iget-boolean v2, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mInitialControlVisible:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1, v3}, Landroidx/leanback/media/PlaybackGlueHost;->showControlsOverlay(Z)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1, v3}, Landroidx/leanback/media/PlaybackGlueHost;->hideControlsOverlay(Z)V

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/leanback/media/PlaybackGlue;->setHost(Landroidx/leanback/media/PlaybackGlueHost;)V

    .line 9
    invoke-virtual {p0}, Landroidx/leanback/app/DetailsFragmentBackgroundController;->findOrCreateVideoFragment()Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mLastVideoFragmentForGlueHost:Landroid/app/Fragment;

    .line 10
    :cond_1
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackGlue;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackGlue;->play()V

    :cond_2
    return-void
.end method

.method public final setCoverBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mCoverBitmap:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/app/DetailsFragmentBackgroundController;->getCoverDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    instance-of v0, p1, Landroidx/leanback/graphics/FitWidthBitmapDrawable;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Landroidx/leanback/graphics/FitWidthBitmapDrawable;

    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroidx/leanback/graphics/FitWidthBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final setParallaxDrawableMaxOffset(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawable:Landroidx/leanback/widget/DetailsParallaxDrawable;

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mParallaxDrawableMaxOffset:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "enableParallax already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setSolidColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mSolidColor:I

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/app/DetailsFragmentBackgroundController;->getBottomDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setupVideoPlayback(Landroidx/leanback/media/PlaybackGlue;)V
    .locals 3
    .param p1    # Landroidx/leanback/media/PlaybackGlue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroidx/leanback/media/PlaybackGlue;->getHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v0

    .line 3
    iget-object v2, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    invoke-virtual {v2, v1}, Landroidx/leanback/media/PlaybackGlue;->setHost(Landroidx/leanback/media/PlaybackGlueHost;)V

    move-object v1, v0

    .line 4
    :cond_1
    iput-object p1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    .line 5
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mVideoHelper:Landroidx/leanback/app/DetailsBackgroundVideoHelper;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/DetailsBackgroundVideoHelper;->setPlaybackGlue(Landroidx/leanback/media/PlaybackGlue;)V

    .line 6
    iget-boolean p1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mCanUseHost:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    if-eqz p1, :cond_5

    if-eqz v1, :cond_3

    .line 7
    iget-object p1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mLastVideoFragmentForGlueHost:Landroid/app/Fragment;

    .line 8
    invoke-virtual {p0}, Landroidx/leanback/app/DetailsFragmentBackgroundController;->findOrCreateVideoFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    invoke-virtual {p1, v1}, Landroidx/leanback/media/PlaybackGlue;->setHost(Landroidx/leanback/media/PlaybackGlueHost;)V

    goto :goto_2

    .line 10
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mPlaybackGlue:Landroidx/leanback/media/PlaybackGlue;

    .line 11
    invoke-virtual {p0}, Landroidx/leanback/app/DetailsFragmentBackgroundController;->onCreateGlueHost()Landroidx/leanback/media/PlaybackGlueHost;

    move-result-object v0

    .line 12
    iget-boolean v1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mInitialControlVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v0, v2}, Landroidx/leanback/media/PlaybackGlueHost;->showControlsOverlay(Z)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v0, v2}, Landroidx/leanback/media/PlaybackGlueHost;->hideControlsOverlay(Z)V

    .line 15
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/leanback/media/PlaybackGlue;->setHost(Landroidx/leanback/media/PlaybackGlueHost;)V

    .line 16
    invoke-virtual {p0}, Landroidx/leanback/app/DetailsFragmentBackgroundController;->findOrCreateVideoFragment()Landroid/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mLastVideoFragmentForGlueHost:Landroid/app/Fragment;

    :cond_5
    :goto_2
    return-void
.end method

.method public final switchToRows()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroidx/leanback/app/DetailsFragment;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Landroidx/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    .line 3
    invoke-virtual {v0}, Landroidx/leanback/app/DetailsFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public final switchToVideo()V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/DetailsFragmentBackgroundController;->mFragment:Landroidx/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/DetailsFragment;->switchToVideo()V

    return-void
.end method
