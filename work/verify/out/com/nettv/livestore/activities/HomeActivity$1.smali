.class Lcom/nettv/livestore/activities/HomeActivity$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/HomeActivity;->showExitDlgFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/HomeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/HomeActivity$1;->this$0:Lcom/nettv/livestore/activities/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .registers 1

    return-void
.end method

.method public onOkClick()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/HomeActivity$1;->this$0:Lcom/nettv/livestore/activities/HomeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
