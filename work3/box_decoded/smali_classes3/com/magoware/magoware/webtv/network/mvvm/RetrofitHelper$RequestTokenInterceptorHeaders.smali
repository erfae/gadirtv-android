.class public Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$RequestTokenInterceptorHeaders;
.super Ljava/lang/Object;
.source "RetrofitHelper.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestTokenInterceptorHeaders"
.end annotation


# instance fields
.field enableHeaders:Z

.field final synthetic this$0:Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "enableHeaders"
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$RequestTokenInterceptorHeaders;->this$0:Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-boolean p2, p0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$RequestTokenInterceptorHeaders;->enableHeaders:Z

    return-void
.end method

.method private getBuilder(Lokhttp3/Interceptor$Chain;)Lokhttp3/Request$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chain"
        }
    .end annotation

    .line 326
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$RequestTokenInterceptorHeaders;->enableHeaders:Z

    const-string v1, "User-Agent"

    if-eqz v0, :cond_0

    .line 327
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$RequestTokenInterceptorHeaders;->this$0:Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    .line 328
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->getHttpParams()Ljava/lang/String;

    move-result-object v0

    const-string v2, "auth"

    invoke-virtual {p1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 329
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1

    .line 331
    :cond_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    sget v0, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    .line 332
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "company_id"

    invoke-virtual {p1, v2, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 333
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper$RequestTokenInterceptorHeaders;->getBuilder(Lokhttp3/Interceptor$Chain;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
