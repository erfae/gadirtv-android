.class Landroidx/leanback/app/BackgroundManager$2;
.super Ljava/lang/Object;
.source "BackgroundManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/BackgroundManager;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/BackgroundManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/BackgroundManager$2;->this$0:Landroidx/leanback/app/BackgroundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/BackgroundManager$2;->this$0:Landroidx/leanback/app/BackgroundManager;

    iget v1, v0, Landroidx/leanback/app/BackgroundManager;->mImageInWrapperIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    iget-object v0, v0, Landroidx/leanback/app/BackgroundManager;->mLayerDrawable:Landroidx/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    .line 4
    iget-object v2, v0, Landroidx/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroidx/leanback/app/BackgroundManager$DrawableWrapper;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 5
    aget-object v1, v2, v1

    iput p1, v1, Landroidx/leanback/app/BackgroundManager$DrawableWrapper;->mAlpha:I

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
