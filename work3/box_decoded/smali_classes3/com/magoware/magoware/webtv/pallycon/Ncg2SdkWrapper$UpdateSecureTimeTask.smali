.class Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$UpdateSecureTimeTask;
.super Landroid/os/AsyncTask;
.source "Ncg2SdkWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateSecureTimeTask"
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
.field private isSuccess:Z

.field final synthetic this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$UpdateSecureTimeTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

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

    .line 326
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$UpdateSecureTimeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 343
    :try_start_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$UpdateSecureTimeTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->access$100(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)Lcom/inka/ncg2/Ncg2Agent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent;->updateSecureTime()V

    const/4 p1, 0x1

    .line 344
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$UpdateSecureTimeTask;->isSuccess:Z
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 346
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$UpdateSecureTimeTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->access$000(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    move-result-object v0

    const-string v1, "Failed to update SecureTime"

    invoke-interface {v0, p1, v1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onError(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

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

    .line 326
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$UpdateSecureTimeTask;->onPostExecute(Ljava/lang/Void;)V

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

    .line 332
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$UpdateSecureTimeTask;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$UpdateSecureTimeTask;->this$0:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->access$000(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onCompletedUpdateSecureTime()V

    .line 337
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
