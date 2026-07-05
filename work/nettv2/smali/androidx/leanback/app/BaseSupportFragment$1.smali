.class Landroidx/leanback/app/BaseSupportFragment$1;
.super Landroidx/leanback/util/StateMachine$State;
.source "BaseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/BaseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/BaseSupportFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/BaseSupportFragment;)V
    .locals 2

    iput-object p1, p0, Landroidx/leanback/app/BaseSupportFragment$1;->this$0:Landroidx/leanback/app/BaseSupportFragment;

    const-string p1, "ENTRANCE_ON_PREPARED"

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment$1;->this$0:Landroidx/leanback/app/BaseSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/BaseSupportFragment;->mProgressBarManager:Landroidx/leanback/app/ProgressBarManager;

    invoke-virtual {v0}, Landroidx/leanback/app/ProgressBarManager;->show()V

    return-void
.end method
