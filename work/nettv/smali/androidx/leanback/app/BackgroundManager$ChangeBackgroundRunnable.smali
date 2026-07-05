.class final Landroidx/leanback/app/BackgroundManager$ChangeBackgroundRunnable;
.super Ljava/lang/Object;
.source "BackgroundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChangeBackgroundRunnable"
.end annotation


# instance fields
.field public final mDrawable:Landroid/graphics/drawable/Drawable;

.field public final synthetic this$0:Landroidx/leanback/app/BackgroundManager;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/BackgroundManager;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroidx/leanback/app/BackgroundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private runTask()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroidx/leanback/app/BackgroundManager;

    iget-object v1, v0, Landroidx/leanback/app/BackgroundManager;->mLayerDrawable:Landroidx/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 2
    :cond_1
    iget-object v1, v1, Landroidx/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroidx/leanback/app/BackgroundManager$DrawableWrapper;

    iget v3, v0, Landroidx/leanback/app/BackgroundManager;->mImageInWrapperIndex:I

    aget-object v1, v1, v3

    :goto_0
    if-eqz v1, :cond_3

    .line 3
    iget-object v3, p0, Landroidx/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroidx/leanback/app/BackgroundManager$DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroidx/leanback/app/BackgroundManager;->sameDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Landroidx/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroidx/leanback/app/BackgroundManager;

    iget-object v3, v0, Landroidx/leanback/app/BackgroundManager;->mLayerDrawable:Landroidx/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v4, Landroidx/leanback/R$id;->background_imagein:I

    iget-object v0, v0, Landroidx/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Landroidx/leanback/app/BackgroundManager$TranslucentLayerDrawable;->clearDrawable(ILandroid/content/Context;)V

    .line 5
    iget-object v0, p0, Landroidx/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroidx/leanback/app/BackgroundManager;

    iget-object v0, v0, Landroidx/leanback/app/BackgroundManager;->mLayerDrawable:Landroidx/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v3, Landroidx/leanback/R$id;->background_imageout:I

    .line 6
    invoke-virtual {v1}, Landroidx/leanback/app/BackgroundManager$DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v3, v1}, Landroidx/leanback/app/BackgroundManager$TranslucentLayerDrawable;->updateDrawable(ILandroid/graphics/drawable/Drawable;)Landroidx/leanback/app/BackgroundManager$DrawableWrapper;

    .line 8
    :cond_3
    iget-object v0, p0, Landroidx/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroidx/leanback/app/BackgroundManager;

    iget-boolean v1, v0, Landroidx/leanback/app/BackgroundManager;->mAttached:Z

    if-nez v1, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    iget-object v1, v0, Landroidx/leanback/app/BackgroundManager;->mLayerDrawable:Landroidx/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, v1, Landroidx/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroidx/leanback/app/BackgroundManager$DrawableWrapper;

    iget v0, v0, Landroidx/leanback/app/BackgroundManager;->mImageInWrapperIndex:I

    aget-object v2, v2, v0

    :goto_1
    if-nez v2, :cond_6

    .line 10
    iget-object v0, p0, Landroidx/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 11
    sget v2, Landroidx/leanback/R$id;->background_imagein:I

    invoke-virtual {v1, v2, v0}, Landroidx/leanback/app/BackgroundManager$TranslucentLayerDrawable;->updateDrawable(ILandroid/graphics/drawable/Drawable;)Landroidx/leanback/app/BackgroundManager$DrawableWrapper;

    .line 12
    iget-object v0, p0, Landroidx/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroidx/leanback/app/BackgroundManager;

    iget-object v1, v0, Landroidx/leanback/app/BackgroundManager;->mLayerDrawable:Landroidx/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    iget v0, v0, Landroidx/leanback/app/BackgroundManager;->mImageInWrapperIndex:I

    const/4 v2, 0x0

    .line 13
    iget-object v3, v1, Landroidx/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroidx/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v4, v3, v0

    if-eqz v4, :cond_6

    .line 14
    aget-object v0, v3, v0

    iput v2, v0, Landroidx/leanback/app/BackgroundManager$DrawableWrapper;->mAlpha:I

    .line 15
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 16
    :cond_6
    iget-object v0, p0, Landroidx/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroidx/leanback/app/BackgroundManager;

    iget-object v0, v0, Landroidx/leanback/app/BackgroundManager;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    iget-object v0, p0, Landroidx/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroidx/leanback/app/BackgroundManager;

    iget-object v0, v0, Landroidx/leanback/app/BackgroundManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->runTask()V

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->this$0:Landroidx/leanback/app/BackgroundManager;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/leanback/app/BackgroundManager;->mChangeRunnable:Landroidx/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    return-void
.end method
