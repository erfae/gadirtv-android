.class final Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1994
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1996
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-nez v0, :cond_5

    .line 1997
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v1, 0x1

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 1998
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1999
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2000
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v3, 0x0

    iput v3, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLayoutMode:I

    .line 2002
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-boolean v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    const/4 v3, 0x2

    if-nez v2, :cond_4

    .line 2003
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->layoutChildren()V

    .line 2004
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2005
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->positionSelector(Landroid/view/View;)V

    .line 2006
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setPressed(Z)V

    .line 2008
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    .line 2009
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isLongClickable()Z

    move-result v1

    .line 2011
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 2012
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2013
    instance-of v4, v2, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    .line 2015
    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 2017
    :cond_0
    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 2023
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2024
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    new-instance v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$602(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;

    .line 2026
    :cond_2
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 2027
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 2029
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    goto :goto_1

    .line 2032
    :cond_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    :cond_5
    :goto_1
    return-void
.end method
