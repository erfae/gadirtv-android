.class Lcom/nettv/livestore/activities/MovieCreditActivity$1;
.super Ljava/lang/Object;
.source "MovieCreditActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/MovieCreditActivity;->getMovieCredit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/nettv/livestore/models/MovieCreditResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/MovieCreditActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/MovieCreditActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieCreditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/nettv/livestore/models/MovieCreditResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/nettv/livestore/models/MovieCreditResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/nettv/livestore/models/MovieCreditResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieCreditActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/MovieCreditActivity;->modelList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/MovieCreditResponse;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/MovieCreditResponse;->getCast()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieCreditActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieCreditActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nettv/livestore/models/MovieCreditResponse;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/MovieCreditResponse;->getCast()Ljava/util/List;

    move-result-object p2

    # invokes: Lcom/nettv/livestore/activities/MovieCreditActivity;->getNewModelList(Ljava/util/List;)V
    invoke-static {p1, p2}, Lcom/nettv/livestore/activities/MovieCreditActivity;->access$000(Lcom/nettv/livestore/activities/MovieCreditActivity;Ljava/util/List;)V

    :cond_2c
    return-void
.end method
