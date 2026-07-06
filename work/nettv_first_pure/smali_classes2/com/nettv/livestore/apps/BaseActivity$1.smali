.class Lcom/nettv/livestore/apps/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/apps/BaseActivity;->authentication(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/nettv/livestore/models/LoginResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/apps/BaseActivity;

.field public final synthetic val$serverUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/apps/BaseActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iput-object p2, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->val$serverUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Lretrofit2/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/nettv/livestore/models/LoginResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-boolean p2, p1, Lcom/nettv/livestore/apps/BaseActivity;->is_stop:Z

    if-nez p2, :cond_1

    .line 2
    iget p2, p1, Lcom/nettv/livestore/apps/BaseActivity;->error_account:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ge p2, v0, :cond_0

    add-int/2addr p2, v1

    .line 3
    iput p2, p1, Lcom/nettv/livestore/apps/BaseActivity;->error_account:I

    .line 4
    iget-object p2, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->val$serverUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/nettv/livestore/apps/BaseActivity;->access$100(Lcom/nettv/livestore/apps/BaseActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/nettv/livestore/apps/BaseActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceISM3U(Z)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-object p2, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->val$serverUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/nettv/livestore/apps/BaseActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1, p2, v0}, Lcom/nettv/livestore/apps/BaseActivity;->reloadM3UData(Ljava/lang/String;Lcom/nettv/livestore/models/WordModels;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .param p1    # Lretrofit2/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lretrofit2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/nettv/livestore/models/LoginResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/nettv/livestore/models/LoginResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/LoginResponse;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/LoginResponse;->getUser_info()Lcom/nettv/livestore/models/LoginModel;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/LoginResponse;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/LoginResponse;->getUser_info()Lcom/nettv/livestore/models/LoginModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nettv/livestore/models/LoginModel;->getStatus()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    const/4 v1, 0x0

    iput v1, p1, Lcom/nettv/livestore/apps/BaseActivity;->error_account:I

    .line 3
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/LoginResponse;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/LoginResponse;->getUser_info()Lcom/nettv/livestore/models/LoginModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nettv/livestore/models/LoginModel;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Active"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-object p2, p2, Lcom/nettv/livestore/apps/BaseActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/WordModels;->getAccount_expired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    invoke-virtual {p1, v1}, Lcom/nettv/livestore/apps/BaseActivity;->doNextTask(Z)V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-object p1, p1, Lcom/nettv/livestore/apps/BaseActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/LoginResponse;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/LoginResponse;->getUser_info()Lcom/nettv/livestore/models/LoginModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLoginModel(Lcom/nettv/livestore/models/LoginModel;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-object v0, p1, Lcom/nettv/livestore/apps/BaseActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p1, p1, Lcom/nettv/livestore/apps/BaseActivity;->user:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceUsername(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-object v0, p1, Lcom/nettv/livestore/apps/BaseActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p1, p1, Lcom/nettv/livestore/apps/BaseActivity;->password:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferencePassword(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/LoginResponse;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/LoginResponse;->getServerModel()Lcom/nettv/livestore/models/ServerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nettv/livestore/models/ServerModel;->getTimestamp_now()J

    move-result-wide v0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/LoginResponse;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/LoginResponse;->getServerModel()Lcom/nettv/livestore/models/ServerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nettv/livestore/models/ServerModel;->getTime_now()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/nettv/livestore/apps/Constants;->setServerTimeOffset(JLjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-boolean p2, p1, Lcom/nettv/livestore/apps/BaseActivity;->is_stop:Z

    if-nez p2, :cond_3

    .line 11
    invoke-static {p1}, Lcom/nettv/livestore/apps/BaseActivity;->access$000(Lcom/nettv/livestore/apps/BaseActivity;)V

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-object p1, p1, Lcom/nettv/livestore/apps/BaseActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceISM3U(Z)V

    .line 13
    iget-object p1, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->this$0:Lcom/nettv/livestore/apps/BaseActivity;

    iget-object p2, p0, Lcom/nettv/livestore/apps/BaseActivity$1;->val$serverUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/nettv/livestore/apps/BaseActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1, p2, v0}, Lcom/nettv/livestore/apps/BaseActivity;->reloadM3UData(Ljava/lang/String;Lcom/nettv/livestore/models/WordModels;)V

    :cond_3
    :goto_1
    return-void
.end method
