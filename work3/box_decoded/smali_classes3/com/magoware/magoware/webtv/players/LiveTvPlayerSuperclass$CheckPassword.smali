.class Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$CheckPassword;
.super Landroid/os/AsyncTask;
.source "LiveTvPlayerSuperclass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckPassword"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1898
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$CheckPassword;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$1;)V
    .locals 0

    .line 1898
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$CheckPassword;-><init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 1898
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$CheckPassword;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 1901
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "CheckPassword"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1902
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 1903
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$CheckPassword;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$1502(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "unused"
        }
    .end annotation

    .line 1898
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$CheckPassword;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unused"
        }
    .end annotation

    .line 1909
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1910
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$CheckPassword;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    const-class v1, Lcom/magoware/magoware/webtv/players/PasswordActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1911
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->PASSWORD_DIALOG_TITLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$CheckPassword;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    const v2, 0x7f14030e

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1912
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$CheckPassword;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
