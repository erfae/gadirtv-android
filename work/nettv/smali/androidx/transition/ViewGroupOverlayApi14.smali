.class Landroidx/transition/ViewGroupOverlayApi14;
.super Landroidx/transition/ViewOverlayApi14;
.source "ViewGroupOverlayApi14.java"

# interfaces
.implements Landroidx/transition/ViewGroupOverlayImpl;


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->add(Landroid/view/View;)V

    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroidx/transition/ViewOverlayApi14$OverlayViewGroup;->remove(Landroid/view/View;)V

    return-void
.end method
