.class public abstract Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment;
.super Landroidx/fragment/app/Fragment;
.source "MerlinFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment$DemoLogHandle;
    }
.end annotation


# instance fields
.field private logHandle:Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment$DemoLogHandle;

.field protected merlin:Lcom/novoda/merlin/Merlin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createMerlin()Lcom/novoda/merlin/Merlin;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 21
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance p1, Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment$DemoLogHandle;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment$DemoLogHandle;-><init>(Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment$1;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment;->logHandle:Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment$DemoLogHandle;

    .line 23
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment;->createMerlin()Lcom/novoda/merlin/Merlin;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment;->merlin:Lcom/novoda/merlin/Merlin;

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 42
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 43
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment;->logHandle:Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment$DemoLogHandle;

    invoke-static {v0}, Lcom/novoda/merlin/Logger;->attach(Lcom/novoda/merlin/Logger$LogHandle;)V

    .line 44
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment;->merlin:Lcom/novoda/merlin/Merlin;

    invoke-virtual {v0}, Lcom/novoda/merlin/Merlin;->bind()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 50
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment;->merlin:Lcom/novoda/merlin/Merlin;

    invoke-virtual {v0}, Lcom/novoda/merlin/Merlin;->unbind()V

    .line 51
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment;->logHandle:Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment$DemoLogHandle;

    invoke-static {v0}, Lcom/novoda/merlin/Logger;->detach(Lcom/novoda/merlin/Logger$LogHandle;)V

    return-void
.end method

.method protected registerBindable(Lcom/novoda/merlin/Bindable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bindable"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment;->merlin:Lcom/novoda/merlin/Merlin;

    invoke-virtual {v0, p1}, Lcom/novoda/merlin/Merlin;->registerBindable(Lcom/novoda/merlin/Bindable;)V

    return-void
.end method

.method protected registerConnectable(Lcom/novoda/merlin/Connectable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectable"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment;->merlin:Lcom/novoda/merlin/Merlin;

    invoke-virtual {v0, p1}, Lcom/novoda/merlin/Merlin;->registerConnectable(Lcom/novoda/merlin/Connectable;)V

    return-void
.end method

.method protected registerDisconnectable(Lcom/novoda/merlin/Disconnectable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disconnectable"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/magoware/magoware/webtv/network_test/presentation/MerlinFragment;->merlin:Lcom/novoda/merlin/Merlin;

    invoke-virtual {v0, p1}, Lcom/novoda/merlin/Merlin;->registerDisconnectable(Lcom/novoda/merlin/Disconnectable;)V

    return-void
.end method
