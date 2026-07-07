.class public Lcom/magoware/magoware/webtv/util/ErrorUtils;
.super Ljava/lang/Object;
.source "ErrorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ErrorBody(Lretrofit2/Response;)Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "*>;)",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->retrofitInstance:Lretrofit2/Retrofit;

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    .line 66
    invoke-virtual {v0, v1, v2}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/MagowareApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14045b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-interface {v0, p0}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    goto :goto_0

    .line 75
    :cond_0
    new-instance p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 78
    new-instance v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static ErrorMessage(Lretrofit2/Response;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 19
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->retrofitInstance:Lretrofit2/Retrofit;

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    .line 20
    invoke-virtual {v0, v1, v2}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    const v1, 0x7f14045b

    if-eqz p0, :cond_0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 26
    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-interface {v0, p0}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    .line 27
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->getExtra_data()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 29
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MagowareApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 35
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/MagowareApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 32
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/MagowareApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static ErrorStatusCode(Lretrofit2/Response;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "*>;)I"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->retrofitInstance:Lretrofit2/Retrofit;

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/annotation/Annotation;

    .line 44
    invoke-virtual {v0, v1, v3}, Lretrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-interface {v0, p0}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    .line 51
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->getStatus_code()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return v2
.end method
