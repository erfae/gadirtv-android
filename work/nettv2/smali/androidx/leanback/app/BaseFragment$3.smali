.class Landroidx/leanback/app/BaseFragment$3;
.super Landroidx/leanback/util/StateMachine$State;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/BaseFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/BaseFragment$3;->this$0:Landroidx/leanback/app/BaseFragment;

    const-string p1, "STATE_ENTRANCE_PERFORM"

    invoke-direct {p0, p1}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment$3;->this$0:Landroidx/leanback/app/BaseFragment;

    iget-object v0, v0, Landroidx/leanback/app/BaseFragment;->mProgressBarManager:Landroidx/leanback/app/ProgressBarManager;

    invoke-virtual {v0}, Landroidx/leanback/app/ProgressBarManager;->hide()V

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment$3;->this$0:Landroidx/leanback/app/BaseFragment;

    .line 3
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Landroidx/leanback/app/BaseFragment$6;

    invoke-direct {v3, v0, v1}, Landroidx/leanback/app/BaseFragment$6;-><init>(Landroidx/leanback/app/BaseFragment;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method
