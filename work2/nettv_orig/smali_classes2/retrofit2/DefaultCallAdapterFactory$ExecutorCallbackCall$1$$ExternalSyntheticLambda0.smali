.class public final synthetic Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

.field public final synthetic f$1:Lretrofit2/Callback;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;Lretrofit2/Callback;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->f$0:Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

    iput-object p2, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->f$1:Lretrofit2/Callback;

    iput-object p3, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->f$0:Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v1, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->f$1:Lretrofit2/Callback;

    iget-object v2, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v2, Lretrofit2/Response;

    invoke-static {v0, v1, v2}, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->$r8$lambda$hVGjmafRi6VitDIrPNdoFizVAdk(Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;Lretrofit2/Callback;Lretrofit2/Response;)V

    return-void

    :goto_0
    iget-object v0, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->f$0:Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v1, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->f$1:Lretrofit2/Callback;

    iget-object v2, p0, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->$r8$lambda$G9BY9eQQk64nBfFjfIpx-YzJzUo(Lretrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;Lretrofit2/Callback;Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
