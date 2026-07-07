.class public final LLiveDataCallAdapter$adapt$1;
.super Landroidx/lifecycle/LiveData;
.source "LiveDataCallAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LLiveDataCallAdapter;->adapt(Lretrofit2/Call;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Lcom/magoware/magoware/webtv/api/ApiResponse<",
        "TR;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020\u0001J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "LiveDataCallAdapter$adapt$1",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/api/ApiResponse;",
        "started",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "onActive",
        "",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $call:Lretrofit2/Call;

.field private started:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lretrofit2/Call;)V
    .locals 1

    .line 36
    iput-object p1, p0, LLiveDataCallAdapter$adapt$1;->$call:Lretrofit2/Call;

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, LLiveDataCallAdapter$adapt$1;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$postValue(LLiveDataCallAdapter$adapt$1;Lcom/magoware/magoware/webtv/api/ApiResponse;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, LLiveDataCallAdapter$adapt$1;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 3

    .line 39
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onActive()V

    .line 40
    iget-object v0, p0, LLiveDataCallAdapter$adapt$1;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, LLiveDataCallAdapter$adapt$1;->$call:Lretrofit2/Call;

    new-instance v1, LLiveDataCallAdapter$adapt$1$onActive$1;

    invoke-direct {v1, p0}, LLiveDataCallAdapter$adapt$1$onActive$1;-><init>(LLiveDataCallAdapter$adapt$1;)V

    check-cast v1, Lretrofit2/Callback;

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method
