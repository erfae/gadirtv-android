.class public Lcom/magoware/magoware/webtv/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-static {p0}, Lcom/magoware/magoware/webtv/login/Login;->getIntentForSuccessfulLogin(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 19
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/LauncherActivity;->finish()V

    return-void
.end method
