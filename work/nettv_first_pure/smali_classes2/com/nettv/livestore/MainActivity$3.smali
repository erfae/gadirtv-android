.class Lcom/nettv/livestore/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/MainActivity;->showExitDlgFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/MainActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/MainActivity$3;->this$0:Lcom/nettv/livestore/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 0

    return-void
.end method

.method public onOkClick()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 3
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/MainActivity$3;->this$0:Lcom/nettv/livestore/MainActivity;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity$3;->this$0:Lcom/nettv/livestore/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method
