.class Lcom/nettv/livestore/activities/MovieInfoActivity$1;
.super Ljava/lang/Object;
.source "MovieInfoActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/MovieInfoActivity;->getMovieInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/nettv/livestore/models/MovieInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/MovieInfoActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/MovieInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/nettv/livestore/models/MovieInfoResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieInfoActivity;

    invoke-static {p1}, Lcom/nettv/livestore/activities/MovieInfoActivity;->access$100(Lcom/nettv/livestore/activities/MovieInfoActivity;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/nettv/livestore/models/MovieInfoResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/nettv/livestore/models/MovieInfoResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieInfoActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nettv/livestore/models/MovieInfoResponse;

    iput-object p2, p1, Lcom/nettv/livestore/activities/MovieInfoActivity;->movieInfoResponse:Lcom/nettv/livestore/models/MovieInfoResponse;

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieInfoActivity;

    invoke-static {p1}, Lcom/nettv/livestore/activities/MovieInfoActivity;->access$000(Lcom/nettv/livestore/activities/MovieInfoActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity$1;->this$0:Lcom/nettv/livestore/activities/MovieInfoActivity;

    invoke-static {p1}, Lcom/nettv/livestore/activities/MovieInfoActivity;->access$100(Lcom/nettv/livestore/activities/MovieInfoActivity;)V

    :cond_0
    :goto_0
    return-void
.end method
