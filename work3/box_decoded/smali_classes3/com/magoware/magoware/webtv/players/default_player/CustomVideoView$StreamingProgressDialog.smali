.class public Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;
.super Landroid/os/AsyncTask;
.source "CustomVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StreamingProgressDialog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;->this$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    const/4 p1, 0x0

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

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

    .line 328
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 347
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;->this$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;->this$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;->this$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
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

    .line 328
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 331
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;->this$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;->this$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->access$000(Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    .line 333
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;->this$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    const-string v1, "Loading stream..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;->this$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 335
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;->this$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 336
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView$StreamingProgressDialog;->this$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->progressDialogStreaming:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
