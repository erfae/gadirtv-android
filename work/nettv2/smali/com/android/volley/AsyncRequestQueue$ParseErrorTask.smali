.class Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;
.super Lcom/android/volley/RequestTask;
.source "AsyncRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/AsyncRequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParseErrorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/volley/AsyncRequestQueue;

.field public volleyError:Lcom/android/volley/VolleyError;


# direct methods
.method public constructor <init>(Lcom/android/volley/AsyncRequestQueue;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "TT;>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 3
    iput-object p3, p0, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;->volleyError:Lcom/android/volley/VolleyError;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;->volleyError:Lcom/android/volley/VolleyError;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/android/volley/AsyncRequestQueue$ParseErrorTask;->this$0:Lcom/android/volley/AsyncRequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->getResponseDelivery()Lcom/android/volley/ResponseDelivery;

    move-result-object v0

    iget-object v2, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    invoke-interface {v0, v2, v1}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 3
    iget-object v0, p0, Lcom/android/volley/RequestTask;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->notifyListenerResponseNotUsable()V

    return-void
.end method
