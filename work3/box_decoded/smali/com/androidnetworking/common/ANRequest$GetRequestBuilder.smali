.class public Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
.super Ljava/lang/Object;
.source "ANRequest.java"

# interfaces
.implements Lcom/androidnetworking/common/RequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidnetworking/common/ANRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetRequestBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/androidnetworking/common/RequestBuilder;"
    }
.end annotation


# instance fields
.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCacheControl:Lokhttp3/CacheControl;

.field private mDecodeConfig:Landroid/graphics/Bitmap$Config;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mHeadersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMethod:I

.field private mOkHttpClient:Lokhttp3/OkHttpClient;

.field private mPathParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:Lcom/androidnetworking/common/Priority;

.field private mQueryParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mTag:Ljava/lang/Object;

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    sget-object v0, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mPriority:Lcom/androidnetworking/common/Priority;

    const/4 v0, 0x0

    .line 875
    iput v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mMethod:I

    .line 883
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    .line 884
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    .line 885
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    .line 892
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mUrl:Ljava/lang/String;

    .line 893
    iput v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mMethod:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    sget-object v0, Lcom/androidnetworking/common/Priority;->MEDIUM:Lcom/androidnetworking/common/Priority;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mPriority:Lcom/androidnetworking/common/Priority;

    const/4 v0, 0x0

    .line 875
    iput v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mMethod:I

    .line 883
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    .line 884
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    .line 885
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    .line 897
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mUrl:Ljava/lang/String;

    .line 898
    iput p2, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mMethod:I

    return-void
.end method

.method static synthetic access$000(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)I
    .locals 0

    .line 873
    iget p0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mMethod:I

    return p0
.end method

.method static synthetic access$100(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Lcom/androidnetworking/common/Priority;
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mPriority:Lcom/androidnetworking/common/Priority;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Lokhttp3/CacheControl;
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Ljava/lang/String;
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Ljava/lang/String;
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Ljava/lang/Object;
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method static synthetic access$600(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)I
    .locals 0

    .line 873
    iget p0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mMaxHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)I
    .locals 0

    .line 873
    iget p0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mMaxWidth:I

    return p0
.end method

.method static synthetic access$800(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method static synthetic access$900(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)Ljava/util/HashMap;
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public addHeaders(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 978
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    .line 979
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v1

    .line 980
    invoke-virtual {v1, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 978
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 963
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addHeaders(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 970
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mHeadersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addHeaders(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 873
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->addHeaders(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 873
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeaders(Ljava/util/Map;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 873
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->addHeaders(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addPathParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 954
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    .line 955
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v1

    .line 956
    invoke-virtual {v1, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 954
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addPathParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 946
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mPathParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addPathParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 873
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->addPathParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 873
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->addPathParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addPathParameter(Ljava/util/Map;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 873
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->addPathParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addQueryParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 930
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    .line 931
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v1

    .line 932
    invoke-virtual {v1, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 930
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addQueryParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 922
    iget-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mQueryParameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addQueryParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 873
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->addQueryParameter(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 873
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addQueryParameter(Ljava/util/Map;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 873
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->addQueryParameter(Ljava/util/Map;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/androidnetworking/common/ANRequest;
    .locals 1

    .line 1059
    new-instance v0, Lcom/androidnetworking/common/ANRequest;

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANRequest;-><init>(Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;)V

    return-object v0
.end method

.method public doNotCacheResponse()Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 987
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic doNotCacheResponse()Lcom/androidnetworking/common/RequestBuilder;
    .locals 1

    .line 873
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->doNotCacheResponse()Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyFromNetwork()Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 999
    sget-object v0, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic getResponseOnlyFromNetwork()Lcom/androidnetworking/common/RequestBuilder;
    .locals 1

    .line 873
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->getResponseOnlyFromNetwork()Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getResponseOnlyIfCached()Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 993
    sget-object v0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    iput-object v0, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic getResponseOnlyIfCached()Lcom/androidnetworking/common/RequestBuilder;
    .locals 1

    .line 873
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->getResponseOnlyIfCached()Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")TT;"
        }
    .end annotation

    .line 1034
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public setBitmapMaxHeight(I)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1044
    iput p1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mMaxHeight:I

    return-object p0
.end method

.method public setBitmapMaxWidth(I)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1049
    iput p1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mMaxWidth:I

    return-object p0
.end method

.method public setBitmapOptions(Landroid/graphics/BitmapFactory$Options;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/BitmapFactory$Options;",
            ")TT;"
        }
    .end annotation

    .line 1039
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 1017
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public bridge synthetic setExecutor(Ljava/util/concurrent/Executor;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 873
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->setExecutor(Ljava/util/concurrent/Executor;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setImageScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView$ScaleType;",
            ")TT;"
        }
    .end annotation

    .line 1054
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 1005
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lokhttp3/CacheControl$Builder;->maxAge(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 873
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 1011
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object p1

    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mCacheControl:Lokhttp3/CacheControl;

    return-object p0
.end method

.method public bridge synthetic setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 873
    invoke-virtual {p0, p1, p2}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->setMaxStaleCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            ")TT;"
        }
    .end annotation

    .line 1023
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public bridge synthetic setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 873
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidnetworking/common/Priority;",
            ")TT;"
        }
    .end annotation

    .line 903
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mPriority:Lcom/androidnetworking/common/Priority;

    return-object p0
.end method

.method public bridge synthetic setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 873
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 909
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 873
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1029
    iput-object p1, p0, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setUserAgent(Ljava/lang/String;)Lcom/androidnetworking/common/RequestBuilder;
    .locals 0

    .line 873
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;->setUserAgent(Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;

    move-result-object p1

    return-object p1
.end method
