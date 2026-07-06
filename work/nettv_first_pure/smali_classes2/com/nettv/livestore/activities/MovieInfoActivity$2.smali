.class Lcom/nettv/livestore/activities/MovieInfoActivity$2;
.super Ljava/lang/Object;
.source "MovieInfoActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/MovieInfoActivity;->getCastModels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/nettv/livestore/models/CastResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/MovieInfoActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/MovieInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity$2;->this$0:Lcom/nettv/livestore/activities/MovieInfoActivity;

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
            "Lcom/nettv/livestore/models/CastResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity$2;->this$0:Lcom/nettv/livestore/activities/MovieInfoActivity;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lcom/nettv/livestore/activities/MovieInfoActivity;->access$200(Lcom/nettv/livestore/activities/MovieInfoActivity;Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/nettv/livestore/models/CastResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/nettv/livestore/models/CastResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity$2;->this$0:Lcom/nettv/livestore/activities/MovieInfoActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nettv/livestore/models/CastResponse;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/CastResponse;->getCast()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/nettv/livestore/activities/MovieInfoActivity;->access$200(Lcom/nettv/livestore/activities/MovieInfoActivity;Ljava/util/List;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/MovieInfoActivity$2;->this$0:Lcom/nettv/livestore/activities/MovieInfoActivity;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lcom/nettv/livestore/activities/MovieInfoActivity;->access$200(Lcom/nettv/livestore/activities/MovieInfoActivity;Ljava/util/List;)V

    :goto_0
    return-void
.end method
