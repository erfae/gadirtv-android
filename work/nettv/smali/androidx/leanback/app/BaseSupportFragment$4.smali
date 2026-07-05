.class Landroidx/leanback/app/BaseSupportFragment$4;
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
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/BaseSupportFragment$4;->this$0:Landroidx/leanback/app/BaseSupportFragment;

    const-string p1, "ENTRANCE_ON_ENDED"

    invoke-direct {p0, p1}, Landroidx/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment$4;->this$0:Landroidx/leanback/app/BaseSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BaseSupportFragment;->onEntranceTransitionEnd()V

    return-void
.end method
