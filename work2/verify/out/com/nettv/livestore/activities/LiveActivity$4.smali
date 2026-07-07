.class Lcom/nettv/livestore/activities/LiveActivity$4;
.super Ljava/lang/Object;
.source "LiveActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/LiveActivity;->getShortEpg(Ljava/lang/String;)V
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
.field public final synthetic this$0:Lcom/nettv/livestore/activities/LiveActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/LiveActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$4;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

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
            "Lcom/nettv/livestore/models/CatchUpEpgResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$4;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    const/4 p2, 0x0

    # invokes: Lcom/nettv/livestore/activities/LiveActivity;->showEpgInfo(Ljava/util/List;)V
    invoke-static {p1, p2}, Lcom/nettv/livestore/activities/LiveActivity;->access$200(Lcom/nettv/livestore/activities/LiveActivity;Ljava/util/List;)V

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

    if-eqz p1, :cond_40

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CatchUpEpgResponse;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CatchUpEpgResponse;->getEpg_listings()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_40

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/CatchUpEpgResponse;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/CatchUpEpgResponse;->getEpg_listings()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_40

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$4;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/CatchUpEpgResponse;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/CatchUpEpgResponse;->getEpg_listings()Ljava/util/List;

    move-result-object v0

    # invokes: Lcom/nettv/livestore/activities/LiveActivity;->showEpgInfo(Ljava/util/List;)V
    invoke-static {p1, v0}, Lcom/nettv/livestore/activities/LiveActivity;->access$200(Lcom/nettv/livestore/activities/LiveActivity;Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$4;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nettv/livestore/models/CatchUpEpgResponse;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/CatchUpEpgResponse;->getEpg_listings()Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/nettv/livestore/activities/LiveActivity;->epgEventList:Ljava/util/List;

    goto :goto_46

    .line 4
    :cond_40
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$4;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    const/4 p2, 0x0

    # invokes: Lcom/nettv/livestore/activities/LiveActivity;->showEpgInfo(Ljava/util/List;)V
    invoke-static {p1, p2}, Lcom/nettv/livestore/activities/LiveActivity;->access$200(Lcom/nettv/livestore/activities/LiveActivity;Ljava/util/List;)V

    :goto_46
    return-void
.end method
