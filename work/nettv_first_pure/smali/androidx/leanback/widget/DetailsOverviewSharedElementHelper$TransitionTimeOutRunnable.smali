.class Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;
.super Ljava/lang/Object;
.source "DetailsOverviewSharedElementHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionTimeOutRunnable"
.end annotation


# instance fields
.field public mHelperRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;->mHelperRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;->mHelperRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, v0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mStartedPostpone:Z

    if-nez v1, :cond_1

    .line 3
    iget-object v1, v0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    invoke-static {v1}, Landroidx/core/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mStartedPostpone:Z

    :cond_1
    return-void
.end method
