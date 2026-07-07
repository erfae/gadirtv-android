.class Lcom/magoware/magoware/webtv/login/LoginFirstStep$1;
.super Ljava/lang/Object;
.source "LoginFirstStep.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/login/LoginFirstStep;->checkConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/login/LoginFirstStep;

.field final synthetic val$handlerThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/login/LoginFirstStep;Landroid/os/HandlerThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$handlerThread"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFirstStep;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep$1;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$LoginFirstStep$1()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFirstStep;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/login/LoginFragment;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/login/LoginFragment;-><init>()V

    const v2, 0x7f0b0374

    .line 130
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public run()V
    .locals 3

    .line 117
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/MagowareApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 118
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://rc.tibo.tv/"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v2, "close"

    .line 123
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2710

    .line 124
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 125
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 126
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFirstStep;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFirstStep$1$aNTxB2CoFPXXGIPMqVEEMfqGHRQ;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFirstStep$1$aNTxB2CoFPXXGIPMqVEEMfqGHRQ;-><init>(Lcom/magoware/magoware/webtv/login/LoginFirstStep$1;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFirstStep;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFirstStep;

    const v2, 0x7f1403b4

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/login/LoginFirstStep;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 137
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep$1;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFirstStep$1;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 140
    throw v0

    :cond_1
    :goto_2
    return-void
.end method
