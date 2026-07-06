.class Landroidx/transition/Visibility$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/transition/Visibility;

.field public final synthetic val$finalOverlayView:Landroid/view/View;

.field public final synthetic val$overlayHost:Landroid/view/ViewGroup;

.field public final synthetic val$startView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/Visibility$1;->this$0:Landroidx/transition/Visibility;

    iput-object p2, p0, Landroidx/transition/Visibility$1;->val$overlayHost:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    iput-object p4, p0, Landroidx/transition/Visibility$1;->val$startView:Landroid/view/View;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 3
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/transition/Visibility$1;->val$startView:Landroid/view/View;

    sget v1, Landroidx/transition/R$id;->save_overlay_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/transition/Visibility$1;->val$overlayHost:Landroid/view/ViewGroup;

    .line 3
    new-instance v1, Landroidx/transition/ViewGroupOverlayApi18;

    invoke-direct {v1, v0}, Landroidx/transition/ViewGroupOverlayApi18;-><init>(Landroid/view/ViewGroup;)V

    .line 4
    iget-object v0, p0, Landroidx/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-interface {v1, v0}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    .line 5
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 1
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/transition/Visibility$1;->val$overlayHost:Landroid/view/ViewGroup;

    .line 2
    new-instance v0, Landroidx/transition/ViewGroupOverlayApi18;

    invoke-direct {v0, p1}, Landroidx/transition/ViewGroupOverlayApi18;-><init>(Landroid/view/ViewGroup;)V

    .line 3
    iget-object p1, p0, Landroidx/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-interface {v0, p1}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 1
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Landroidx/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/transition/Visibility$1;->val$overlayHost:Landroid/view/ViewGroup;

    .line 3
    new-instance v0, Landroidx/transition/ViewGroupOverlayApi18;

    invoke-direct {v0, p1}, Landroidx/transition/ViewGroupOverlayApi18;-><init>(Landroid/view/ViewGroup;)V

    .line 4
    iget-object p1, p0, Landroidx/transition/Visibility$1;->val$finalOverlayView:Landroid/view/View;

    invoke-interface {v0, p1}, Landroidx/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/transition/Visibility$1;->this$0:Landroidx/transition/Visibility;

    invoke-virtual {p1}, Landroidx/transition/Transition;->cancel()V

    :goto_0
    return-void
.end method
