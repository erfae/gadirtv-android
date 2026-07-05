.class Landroidx/transition/ChangeBounds$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$drawable:Landroid/graphics/drawable/BitmapDrawable;

.field public final synthetic val$sceneRoot:Landroid/view/ViewGroup;

.field public final synthetic val$transitionAlpha:F

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/ChangeBounds$10;->val$sceneRoot:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/transition/ChangeBounds$10;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p3, p0, Landroidx/transition/ChangeBounds$10;->val$view:Landroid/view/View;

    iput p4, p0, Landroidx/transition/ChangeBounds$10;->val$transitionAlpha:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/transition/ChangeBounds$10;->val$sceneRoot:Landroid/view/ViewGroup;

    sget-object v0, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroid/util/Property;

    .line 2
    new-instance v0, Landroidx/transition/ViewOverlayApi18;

    invoke-direct {v0, p1}, Landroidx/transition/ViewOverlayApi18;-><init>(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Landroidx/transition/ChangeBounds$10;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v0, p1}, Landroidx/transition/ViewOverlayImpl;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Landroidx/transition/ChangeBounds$10;->val$view:Landroid/view/View;

    iget v0, p0, Landroidx/transition/ChangeBounds$10;->val$transitionAlpha:F

    invoke-static {p1, v0}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    return-void
.end method
