.class Landroidx/leanback/app/SearchFragment$1;
.super Landroidx/leanback/widget/ObjectAdapter$DataObserver;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/SearchFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/SearchFragment$1;->this$0:Landroidx/leanback/app/SearchFragment;

    invoke-direct {p0}, Landroidx/leanback/widget/ObjectAdapter$DataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment$1;->this$0:Landroidx/leanback/app/SearchFragment;

    iget-object v1, v0, Landroidx/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Landroidx/leanback/app/SearchFragment;->mResultsChangedCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/SearchFragment$1;->this$0:Landroidx/leanback/app/SearchFragment;

    iget-object v1, v0, Landroidx/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Landroidx/leanback/app/SearchFragment;->mResultsChangedCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
