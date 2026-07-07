.class Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$4;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;


# direct methods
.method constructor <init>(Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;)V
    .locals 0

    .line 175
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$4;->this$0:Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 178
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$4;->this$0:Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->setEntranceTransitionState(Z)V

    return-void
.end method
