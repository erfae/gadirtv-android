.class public final synthetic Lcom/magoware/magoware/webtv/network/mvvm/-$$Lambda$RetrofitHelper$3-QZwRtRWDe3orwrTlBy3Q7ctA0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/-$$Lambda$RetrofitHelper$3-QZwRtRWDe3orwrTlBy3Q7ctA0;->f$0:Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/-$$Lambda$RetrofitHelper$3-QZwRtRWDe3orwrTlBy3Q7ctA0;->f$0:Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->lambda$new$0$RetrofitHelper(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
