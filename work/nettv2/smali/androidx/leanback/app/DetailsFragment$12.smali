.class Landroidx/leanback/app/DetailsFragment$12;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/DetailsFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/DetailsFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/DetailsFragment$12;->this$0:Landroidx/leanback/app/DetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragment$12;->this$0:Landroidx/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragment$12;->this$0:Landroidx/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/DetailsFragment;->switchToVideo()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/DetailsFragment$12;->this$0:Landroidx/leanback/app/DetailsFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    return-void
.end method
