.class public final Landroidx/leanback/app/BackgroundFragment;
.super Landroid/app/Fragment;
.source "BackgroundFragment.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mBackgroundManager:Landroidx/leanback/app/BackgroundManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackgroundManager()Landroidx/leanback/app/BackgroundManager;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/BackgroundFragment;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/BackgroundFragment;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/leanback/app/BackgroundManager;->detach()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/BackgroundFragment;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/leanback/app/BackgroundManager;->postChangeRunnable()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/BackgroundFragment;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/leanback/app/BackgroundManager;->onActivityStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/BackgroundFragment;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/leanback/app/BackgroundManager;->isAutoReleaseOnStop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/leanback/app/BackgroundManager;->release()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method public final setBackgroundManager(Landroidx/leanback/app/BackgroundManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/BackgroundFragment;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    return-void
.end method
