.class Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;
.super Landroid/os/AsyncTask;
.source "Ncg2SdkWrapperListenerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartPlayerActivityTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private contentPath:Ljava/lang/String;

.field private isSuccess:Z

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private playbackUrl:Ljava/lang/String;

.field private smiFileUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "contentPath"
        }
    .end annotation

    .line 382
    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 383
    iput-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->contentPath:Ljava/lang/String;

    .line 384
    invoke-static {p1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->access$000(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;)Landroid/app/Activity;

    move-result-object p1

    const-string p2, "Wait"

    const-string v0, "Please wait..."

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->mProgressDlg:Landroid/app/ProgressDialog;

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
            "params"
        }
    .end annotation

    .line 374
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 425
    invoke-static {}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->getInstance()Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->contentPath:Ljava/lang/String;

    .line 426
    invoke-static {}, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->getInstance()Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;

    move-result-object v1

    iget-object v1, v1, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mRemoteUrlForDnp:Ljava/lang/String;

    .line 427
    invoke-static {}, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->getInstance()Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;

    move-result-object v2

    iget-wide v2, v2, Lcom/magoware/magoware/webtv/pallycon/GlobalPallyCon;->mNcgFileSizeForDnp:J

    .line 425
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->getPlaybackUrl(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->playbackUrl:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 428
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 432
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->isSuccess:Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "result"
        }
    .end annotation

    .line 374
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->mProgressDlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 391
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 392
    iput-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->mProgressDlg:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 398
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->isSuccess:Z

    if-eqz v0, :cond_3

    .line 399
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->access$100(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->access$200(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    iget-object v2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->playbackUrl:Ljava/lang/String;

    const-string v3, "path"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, ""

    .line 401
    iput-object v2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->smiFileUrl:Ljava/lang/String;

    .line 402
    iget-object v2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->contentPath:Ljava/lang/String;

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 403
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 404
    aget-object v4, v2, v3

    const-string v5, "mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 408
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->smiFileUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->smiFileUrl:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 410
    :cond_2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->smiFileUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "smi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->smiFileUrl:Ljava/lang/String;

    const-string v3, "smiPath"

    .line 412
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    iget-object v2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->access$000(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;->access$302(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl;Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;)Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapperListenerImpl$StartPlayerActivityTask;

    .line 419
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
