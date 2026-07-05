.class Lcom/nettv/livestore/activities/SeasonActivity$1;
.super Ljava/lang/Object;
.source "SeasonActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/SeasonActivity;->getSeriesInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/nettv/livestore/models/InfoSerie;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/SeasonActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/SeasonActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity$1;->this$0:Lcom/nettv/livestore/activities/SeasonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 3
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
            "Lcom/nettv/livestore/models/InfoSerie;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity$1;->this$0:Lcom/nettv/livestore/activities/SeasonActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity$1;->this$0:Lcom/nettv/livestore/activities/SeasonActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity$1;->this$0:Lcom/nettv/livestore/activities/SeasonActivity;

    # invokes: Lcom/nettv/livestore/activities/SeasonActivity;->getSomeSeriesInfo()V
    invoke-static {p1}, Lcom/nettv/livestore/activities/SeasonActivity;->access$100(Lcom/nettv/livestore/activities/SeasonActivity;)V

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
            "Lcom/nettv/livestore/models/InfoSerie;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/nettv/livestore/models/InfoSerie;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity$1;->this$0:Lcom/nettv/livestore/activities/SeasonActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/InfoSerie;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity$1;->this$0:Lcom/nettv/livestore/activities/SeasonActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nettv/livestore/models/InfoSerie;

    # invokes: Lcom/nettv/livestore/activities/SeasonActivity;->getSeasonFromInfoSerie(Lcom/nettv/livestore/models/InfoSerie;)V
    invoke-static {p1, p2}, Lcom/nettv/livestore/activities/SeasonActivity;->access$000(Lcom/nettv/livestore/activities/SeasonActivity;Lcom/nettv/livestore/models/InfoSerie;)V

    goto :goto_3c

    .line 4
    :cond_1d
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity$1;->this$0:Lcom/nettv/livestore/activities/SeasonActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity$1;->this$0:Lcom/nettv/livestore/activities/SeasonActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/SeasonActivity;->image_back:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeasonActivity$1;->this$0:Lcom/nettv/livestore/activities/SeasonActivity;

    iget-object p2, p1, Lcom/nettv/livestore/activities/SeasonActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/WordModels;->getNo_episode()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3c
    return-void
.end method
