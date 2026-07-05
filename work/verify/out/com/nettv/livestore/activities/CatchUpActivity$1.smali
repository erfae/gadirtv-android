.class Lcom/nettv/livestore/activities/CatchUpActivity$1;
.super Ljava/lang/Object;
.source "CatchUpActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/CatchUpActivity;->getEpg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/nettv/livestore/models/CatchUpEpgResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/CatchUpActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/CatchUpActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity$1;->this$0:Lcom/nettv/livestore/activities/CatchUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 4
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
            "Lcom/nettv/livestore/models/CatchUpEpgResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity$1;->this$0:Lcom/nettv/livestore/activities/CatchUpActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/CatchUpActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity$1;->this$0:Lcom/nettv/livestore/activities/CatchUpActivity;

    iget-object p2, p1, Lcom/nettv/livestore/activities/CatchUpActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/WordModels;->getNo_epg_avaliable()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity$1;->this$0:Lcom/nettv/livestore/activities/CatchUpActivity;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/nettv/livestore/activities/CatchUpActivity;->catchUpEpgList:Ljava/util/List;

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity$1;->this$0:Lcom/nettv/livestore/activities/CatchUpActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/CatchUpActivity;->image_back:Landroid/widget/ImageButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity$1;->this$0:Lcom/nettv/livestore/activities/CatchUpActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/CatchUpActivity;->image_back:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 4
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
            "Lcom/nettv/livestore/models/CatchUpEpgResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/nettv/livestore/models/CatchUpEpgResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2d

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CatchUpEpgResponse;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CatchUpEpgResponse;->getEpg_listings()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_17

    goto :goto_2d

    .line 2
    :cond_17
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity$1;->this$0:Lcom/nettv/livestore/activities/CatchUpActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nettv/livestore/models/CatchUpEpgResponse;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/CatchUpEpgResponse;->getEpg_listings()Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/nettv/livestore/activities/CatchUpActivity;->catchUpEpgList:Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity$1;->this$0:Lcom/nettv/livestore/activities/CatchUpActivity;

    iget-object p2, p1, Lcom/nettv/livestore/activities/CatchUpActivity;->catchUpEpgList:Ljava/util/List;

    # invokes: Lcom/nettv/livestore/activities/CatchUpActivity;->getCatchupModels(Ljava/util/List;)V
    invoke-static {p1, p2}, Lcom/nettv/livestore/activities/CatchUpActivity;->access$000(Lcom/nettv/livestore/activities/CatchUpActivity;Ljava/util/List;)V

    goto :goto_4f

    .line 4
    :cond_2d
    :goto_2d
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity$1;->this$0:Lcom/nettv/livestore/activities/CatchUpActivity;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/nettv/livestore/activities/CatchUpActivity;->catchUpEpgList:Ljava/util/List;

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity$1;->this$0:Lcom/nettv/livestore/activities/CatchUpActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/CatchUpActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/CatchUpActivity$1;->this$0:Lcom/nettv/livestore/activities/CatchUpActivity;

    iget-object p2, p1, Lcom/nettv/livestore/activities/CatchUpActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/WordModels;->getNo_epg_avaliable()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_4f
    return-void
.end method
