.class Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;
.super Landroid/os/AsyncTask;
.source "Ncg2SdkWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcquireLicenseTask"
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
.field private mActivity:Landroid/app/Activity;

.field mFilePath:Ljava/lang/String;

.field private mIsSucceeded:Z

.field private mOrderID:Ljava/lang/String;

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private mUserID:Ljava/lang/String;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "activity",
            "path",
            "userID",
            "orderID"
        }
    .end annotation

    .line 361
    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 362
    iput-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mActivity:Landroid/app/Activity;

    .line 363
    iput-object p3, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mFilePath:Ljava/lang/String;

    .line 364
    iput-object p4, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mUserID:Ljava/lang/String;

    const-string p1, "01_llama_drama_1080p_loc.mp4.ncg"

    .line 366
    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "duration180"

    .line 367
    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mOrderID:Ljava/lang/String;

    goto :goto_0

    .line 369
    :cond_0
    iput-object p5, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mOrderID:Ljava/lang/String;

    :goto_0
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

    .line 353
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    const/4 p1, 0x0

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mFilePath:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->access$100(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)Lcom/inka/ncg2/Ncg2Agent;

    move-result-object v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/inka/ncg2/Ncg2Agent;->getHeaderInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    move-result-object v0

    .line 405
    iget-object v2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mFilePath:Ljava/lang/String;

    const-string v3, "token"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    iget-object v2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->access$100(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)Lcom/inka/ncg2/Ncg2Agent;

    move-result-object v2

    iget-object v3, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->contentID:Ljava/lang/String;

    iget-object v4, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mUserID:Ljava/lang/String;

    iget-object v5, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->siteID:Ljava/lang/String;

    const-string v6, "eyJ0b2tlbiI6IlRhXC9SdkJBZ1U4ZDdwSExqeXVyK2MzVzhSbEw0QWVzemNScEJoM3ozVFU0Q3RScGFPWDJhOHlPbE9aVVZlRDdLIiwic2l0ZV9pZCI6IkRFTU8iLCJkcm1fdHlwZSI6Ik5DRyIsImNpZCI6IkRFTU8wMV9sbGFtYV9kcmFtYV8xMDgwcF9sb2MifQ=="

    iget-object v7, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->acquisitionURL:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/inka/ncg2/Ncg2Agent;->acquireLicenseByToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 411
    :cond_1
    iget-object v2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->access$100(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)Lcom/inka/ncg2/Ncg2Agent;

    move-result-object v2

    iget-object v3, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->contentID:Ljava/lang/String;

    iget-object v4, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mUserID:Ljava/lang/String;

    iget-object v5, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->siteID:Ljava/lang/String;

    iget-object v6, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mOrderID:Ljava/lang/String;

    iget-object v7, v0, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->acquisitionURL:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/inka/ncg2/Ncg2Agent;->acquireLicenseByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 417
    :goto_1
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mIsSucceeded:Z
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2HttpException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/inka/ncg2/Ncg2ServerResponseErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 425
    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->access$000(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    move-result-object v1

    const-string v2, " Cannot acquire license"

    invoke-interface {v1, v0, v2}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onError(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object p1

    :catch_1
    move-exception v0

    .line 422
    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->access$000(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    move-result-object v1

    .line 423
    invoke-virtual {v0}, Lcom/inka/ncg2/Ncg2ServerResponseErrorException;->getServerErrorCode()I

    move-result v2

    const-string v3, "[Ncg2ServerResponseErrorException] Cannot acquire license"

    .line 422
    invoke-interface {v1, v0, v3, v2}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onServerError(Lcom/inka/ncg2/Ncg2ServerResponseErrorException;Ljava/lang/String;I)V

    :goto_2
    return-object p1

    :catch_2
    move-exception v0

    .line 419
    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->access$000(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    move-result-object v1

    const-string v2, "[Ncg2HttpException] Cannot acquire license"

    invoke-interface {v1, v0, v2}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onError(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object p1
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

    .line 353
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 379
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mProgressDlg:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    .line 381
    :try_start_0
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    .line 382
    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mProgressDlg:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 384
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 387
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mIsSucceeded:Z

    if-eqz p1, :cond_1

    .line 388
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->access$000(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mFilePath:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onCompletedAcquireLicense(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mActivity:Landroid/app/Activity;

    const-string v1, "Wait"

    const-string v2, "Please wait..."

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->mProgressDlg:Landroid/app/ProgressDialog;

    return-void
.end method
