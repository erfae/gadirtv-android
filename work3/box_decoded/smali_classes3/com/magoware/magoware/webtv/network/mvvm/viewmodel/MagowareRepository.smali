.class public Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;
.super Ljava/lang/Object;
.source "MagowareRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$SingletonHelper;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private magoService:Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

.field private network_error:Ljava/lang/String;

.field private server_error:Ljava/lang/String;

.field private timeout_error:Ljava/lang/String;

.field private unexpected_error:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MagowareRepository "

    .line 100
    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->TAG:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/MagowareApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14045b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->unexpected_error:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/MagowareApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1402da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->network_error:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/MagowareApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1403b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->server_error:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/MagowareApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140442

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->timeout_error:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->getMagoServiceInstance()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->magoService:Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$1;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->unexpected_error:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Lretrofit2/Response;)J
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getServerTime(Lretrofit2/Response;)J

    move-result-wide p0

    return-wide p0
.end method

.method private getErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 116
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 117
    iget-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->network_error:Ljava/lang/String;

    return-object p1

    .line 118
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_1

    .line 119
    iget-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->timeout_error:Ljava/lang/String;

    return-object p1

    .line 120
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 122
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 125
    :cond_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->server_error:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;
    .locals 1

    .line 112
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$SingletonHelper;->access$000()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object v0

    return-object v0
.end method

.method private getServerTime(Lretrofit2/Response;)J
    .locals 5
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
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/SettingsObject;",
            ">;>;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1923
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT"

    .line 1924
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1925
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    const-string v4, "Date"

    invoke-virtual {p1, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 1926
    new-instance v2, Ljava/sql/Timestamp;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v0

    :goto_0
    invoke-direct {v2, v3, v4}, Ljava/sql/Timestamp;-><init>(J)V

    .line 1927
    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1929
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_1
    return-wide v0
.end method


# virtual methods
.method addChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "description",
            "stream",
            "iconUrl",
            "genreId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;",
            ">;>;"
        }
    .end annotation

    .line 572
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 574
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->addChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$22;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$22;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method changeUserPassword(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;",
            ">;"
        }
    .end annotation

    .line 936
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 937
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "password"

    .line 938
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    new-instance p1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->changeUserPassword(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$39;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$39;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 940
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method checkWifi()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/CountryObject;",
            ">;>;"
        }
    .end annotation

    .line 804
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 806
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->checkWifi()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$33;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$33;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method deleteChannel(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;",
            ">;"
        }
    .end annotation

    .line 530
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 532
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->deleteChannel(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$20;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$20;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method editChannel(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelNr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;",
            ">;>;"
        }
    .end annotation

    .line 1138
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1139
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->editChannel(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$48;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$48;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1140
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getAccountPurchases()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSalesReportObject;",
            ">;>;"
        }
    .end annotation

    .line 1094
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1096
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getAccountPurchases()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$46;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$46;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1097
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getAccountSettings()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;",
            ">;>;"
        }
    .end annotation

    .line 1028
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1030
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService(I)Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getAccountSettings()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$43;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$43;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1031
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getAccountSubscription()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSubscriptionObject;",
            ">;>;"
        }
    .end annotation

    .line 1072
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1074
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getAccountSubscription()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$45;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$45;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1075
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getAccountUserData()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;",
            ">;>;"
        }
    .end annotation

    .line 984
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 986
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getAccountUserData()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$41;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$41;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 987
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getAllVodCategories()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;",
            ">;>;"
        }
    .end annotation

    .line 846
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 848
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getAllVodCategories()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$35;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$35;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getAssetsCategories(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation

    .line 1535
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1536
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getAssetsCategories(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$66;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$66;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1537
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getAssetsDetails(I)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assetId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;",
            ">;"
        }
    .end annotation

    .line 1557
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1558
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getAssetDetails(I)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$67;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$67;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1559
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getAssetsMenu()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;>;"
        }
    .end annotation

    .line 1514
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1515
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getAssetsMenu()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$65;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$65;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1516
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getBookingInfo()Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/HotelBooking;",
            ">;>;"
        }
    .end annotation

    .line 1579
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1580
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    sget v2, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getBookingInfo(ILjava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$68;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$68;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1581
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getCastDetails(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;",
            ">;"
        }
    .end annotation

    .line 2001
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 2003
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->get()Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getCastDetails(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$86;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$86;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 2004
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getCastMembers(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "movieId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Cast;",
            ">;>;"
        }
    .end annotation

    .line 1981
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1983
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->get()Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getCastMembers(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$85;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$85;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getCatchupStreamData(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/CatchUpStreamObject;",
            ">;>;"
        }
    .end annotation

    .line 1822
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1824
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getCatchupStreamData(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$79;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$79;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1825
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getChannelCategory()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;>;"
        }
    .end annotation

    .line 710
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 712
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getChannelCategory()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$29;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$29;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getChannelInfo(I)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/EpgObject;",
            ">;>;"
        }
    .end annotation

    .line 1710
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1712
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService(I)Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getChannelInfo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$74;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$74;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1713
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getChannelOSD(I)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/OSDObject;",
            ">;>;"
        }
    .end annotation

    .line 1732
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1734
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService(I)Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getChannelOSD(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$75;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$75;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1735
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getChannelsList()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;>;"
        }
    .end annotation

    .line 758
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 760
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getChannelList()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$31;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$31;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getComboList()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/ComboClass;",
            ">;>;"
        }
    .end annotation

    .line 1777
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1779
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getComboList()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$77;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$77;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1780
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getCustomerChannels()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;",
            ">;>;"
        }
    .end annotation

    .line 783
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 785
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getCustomerChannels()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$32;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$32;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getCustomerOrders()Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/HotelOrders;",
            ">;>;"
        }
    .end annotation

    .line 1601
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1602
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    sget v2, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getCustomerOrders(ILjava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$69;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$69;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1603
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getCustomersChannelCategory()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;>;"
        }
    .end annotation

    .line 737
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 739
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getCustomersChannelCategory()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$30;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$30;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getDashboardList()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/MenuObject;",
            ">;>;"
        }
    .end annotation

    .line 1162
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1164
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getDashboardList()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$49;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$49;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1165
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getDeviceMenu()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/MenuObject;",
            ">;>;"
        }
    .end annotation

    .line 909
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 911
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService(I)Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getDeviceMenu()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$38;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$38;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getEpg(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelNumber",
            "start"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;",
            ">;>;"
        }
    .end annotation

    .line 1844
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1846
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getChannelsEPG(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$80;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$80;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getHotelDashboard()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/HotelDashboard;",
            ">;"
        }
    .end annotation

    .line 1665
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1667
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    sget v2, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    invoke-interface {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getHotelDashboard(I)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$72;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$72;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1668
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getHotelInfo()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/HotelInfo;",
            ">;>;"
        }
    .end annotation

    .line 1622
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1623
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    sget v2, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    invoke-interface {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getHotelInfo(I)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$70;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$70;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1624
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getHtmlContent()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1357
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1359
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getHtmlContent()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$58;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$58;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1360
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getLiveTvChannels()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;>;"
        }
    .end annotation

    .line 506
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 508
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService(I)Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getLiveTvChannels()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$19;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$19;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getPallyconToken()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/PallyToken;",
            ">;>;"
        }
    .end annotation

    .line 1754
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1756
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getPallyconToken()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$76;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$76;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;)V

    .line 1757
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getPopupProgramInfo(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "programId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;",
            ">;>;"
        }
    .end annotation

    .line 668
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 670
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getPopupProgramInfo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$27;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$27;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getRandomMovie()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;",
            ">;"
        }
    .end annotation

    .line 403
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 405
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getRandomMovie()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$14;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$14;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 406
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getRelatedMovies(III)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "movieId",
            "page",
            "limit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;>;"
        }
    .end annotation

    .line 299
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 301
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getRelatedMovies(III)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$9;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$9;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 302
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getRelatedTvShow(III)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tvShowId",
            "page",
            "limit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;>;"
        }
    .end annotation

    .line 381
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 383
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getRelatedTvShows(III)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$13;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$13;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 384
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getSeeMoreItems(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 261
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->seeMoreVodItems(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$7;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$7;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 262
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getSettings()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/SettingsObject;",
            ">;>;"
        }
    .end annotation

    .line 1184
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1186
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService(I)Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getSettingsGET()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$50;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$50;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1187
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getSettingsWebRequests()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/SettingsObject;",
            ">;>;"
        }
    .end annotation

    .line 888
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 890
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getSettingsPOST()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$37;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$37;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getSmsCode(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "username"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 1426
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1427
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getSmsCode(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$61;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$61;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1428
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method public getTimezone()D
    .locals 2

    .line 1885
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService(Z)Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v0

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getTimezone()Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$82;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$82;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 1917
    sget-wide v0, Lcom/magoware/magoware/webtv/global/Global;->deviceTimezone:D

    return-wide v0
.end method

.method getTvPrograms(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "search"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;",
            ">;>;"
        }
    .end annotation

    .line 689
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 691
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getTvPrograms(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$28;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$28;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getVodCategories(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 157
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getVodCategories(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$2;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$2;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 158
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getVodDetails(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;>;"
        }
    .end annotation

    .line 179
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 180
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getVodDetails(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$3;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$3;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 181
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getVodMenu()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 133
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService(I)Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getVodMenuInformation()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$1;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$1;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 134
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getVodRecommendations(I)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 221
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getVodRecommendations(I)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$5;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$5;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 222
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getVodSearchListResults(Ljava/lang/String;Ljava/lang/String;II)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "query",
            "page",
            "limit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation

    .line 279
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 281
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getVodSearchList(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$8;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$8;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 282
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getVodSimilar(I)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 241
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getVodSimilar(I)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$6;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$6;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 242
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getVodSubtitles()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/SubtitleObject;",
            ">;>;"
        }
    .end annotation

    .line 867
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 869
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getVodSubtitles()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$36;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$36;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getVodTotalHits(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idVod"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/VODHitObject;",
            ">;>;"
        }
    .end annotation

    .line 551
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 553
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getVodTotalHits(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$21;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$21;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getVodTvShowDetails(I)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 201
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getVodTvShowDetails(I)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$4;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$4;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 202
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getVodTvShowEpisodeDetail(I)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "episodeId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;",
            ">;"
        }
    .end annotation

    .line 361
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 363
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getVodTvShowEpisodeDetail(I)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$12;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$12;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 364
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getVodTvShowEpisodes(II)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tvShowId",
            "seasonNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation

    .line 341
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 343
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getVodTvShowEpisodes(II)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$11;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$11;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 344
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getVodTvShows()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;",
            ">;"
        }
    .end annotation

    .line 321
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 323
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getVodTvShows()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$10;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$10;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 324
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getWeatherData()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/WeatherResponse;",
            ">;>;"
        }
    .end annotation

    .line 1800
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1802
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getPublicIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getWeatherData(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$78;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$78;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1803
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method getWelcomeMsg()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/WelcomeMessageResponse;",
            ">;"
        }
    .end annotation

    .line 1336
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1338
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getWelcomeMsg()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$57;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$57;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1339
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method isAuthorized()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LoginObject;",
            ">;>;"
        }
    .end annotation

    .line 1229
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1231
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->isAuthorized()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$52;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$52;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method isAuthorized(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "username",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LoginObject;",
            ">;>;"
        }
    .end annotation

    .line 1250
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1252
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->isAuthorized(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$53;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$53;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method login(Ljava/lang/String;Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LoginObject;",
            ">;>;"
        }
    .end annotation

    .line 1271
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1273
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService(Z)Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->login(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$54;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$54;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1274
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method loginHotel(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LoginObject;",
            ">;>;"
        }
    .end annotation

    .line 1469
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1471
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService(Z)Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->loginHotel(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$63;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$63;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1472
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method loginMultiCompany(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "username",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LoginObject;",
            ">;>;"
        }
    .end annotation

    .line 1491
    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/util/Utils;->getAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1492
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->get()Lcom/magoware/magoware/webtv/util/NetworkUtils;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->httpRequestParameters(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 1493
    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1494
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->loginMultiCompany(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$64;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$64;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1495
    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object p2
.end method

.method logout()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LogoutOject;",
            ">;>;"
        }
    .end annotation

    .line 825
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 827
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->logoutUser()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$34;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$34;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method logoutOtherDevices(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LogoutOtherDevices;",
            ">;>;"
        }
    .end annotation

    .line 1314
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1316
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService(Z)Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->logoutOtherDevices(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$56;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$56;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1317
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method logoutUser(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 959
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->get()Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v0

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->logoutUser()Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$40;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$40;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;)V

    .line 960
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 976
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->clearLoginData()V

    .line 977
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 978
    const-class v1, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v1, 0x8000

    .line 979
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 980
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method postSmsVerification(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "username",
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 1400
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1402
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->postSmsVerification(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$60;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$60;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1403
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method postTokenUrl(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenUrl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;",
            ">;"
        }
    .end annotation

    .line 423
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 425
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->postTokenUrl(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$15;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$15;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 426
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method qrCodeTokenPost(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accessToken"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/vod/bigscreen/models/QrCodeResponse;",
            ">;"
        }
    .end annotation

    .line 1380
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1382
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getQrCodeInformation(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$59;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$59;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1383
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method resetParentPassword()Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/ForgotPinObject;",
            ">;>;"
        }
    .end annotation

    .line 1116
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1117
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->resetAccountParentPin()Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$47;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$47;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1118
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method resetPassword(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "username"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/ResetPasswordObject;",
            ">;>;"
        }
    .end annotation

    .line 614
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 616
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->resetPassword(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$24;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$24;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method scheduleProgram(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "programId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/ScheduleEpgProgram;",
            ">;>;"
        }
    .end annotation

    .line 635
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 637
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService(I)Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->scheduleProgram(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$25;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$25;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method public sendSuccessTermination(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 656
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->sendSuccessTermination(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$26;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$26;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method sendTvShowThumbReaction(II)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vodId",
            "thumbReaction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;",
            ">;"
        }
    .end annotation

    .line 463
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 465
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->putThumbReaction(II)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$17;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$17;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 466
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method sendVodThumbReaction(II)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vodId",
            "thumbReaction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/MovieReaction;",
            ">;"
        }
    .end annotation

    .line 443
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 445
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->putThumbReaction(II)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$16;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$16;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 446
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method setAccountSettings(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;",
            ">;>;"
        }
    .end annotation

    .line 1050
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1052
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->setAccountSettings(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$44;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$44;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1053
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method setAccountUserData(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;",
            ">;>;"
        }
    .end annotation

    .line 1006
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1008
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->setAccountUserData(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$42;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$42;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1009
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method setFirebaseId(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LoginObject;",
            ">;>;"
        }
    .end annotation

    .line 1207
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1209
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService(Z)Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->setFirebaseId(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$51;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$51;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1210
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method setGuestCheckout()Landroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;",
            ">;"
        }
    .end annotation

    .line 1644
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1645
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    sget v2, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->setGuestCheckout(ILjava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$71;

    invoke-direct {v2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$71;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1646
    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method setTvShowFavorite(II)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vodId",
            "favorite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/google/gson/JsonObject;",
            ">;>;"
        }
    .end annotation

    .line 483
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 485
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->get()Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->setTvShowFavorite(II)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$18;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$18;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 486
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method setVmxId(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vmxId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 1865
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1867
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->setVmxId(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$81;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$81;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1868
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method setVodFavorite(II)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vodId",
            "favorite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/google/gson/JsonObject;",
            ">;>;"
        }
    .end annotation

    .line 1958
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1960
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->get()Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->setVodFavorite(II)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$84;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$84;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1961
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method setVodResume(II)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vodId",
            "vodPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/google/gson/JsonObject;",
            ">;>;"
        }
    .end annotation

    .line 1935
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1937
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->get()Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->setVodResume(II)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$83;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$83;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1938
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method setVoucherCode(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voucherCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;",
            ">;"
        }
    .end annotation

    .line 1445
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1446
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "voucher_code"

    .line 1447
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    new-instance p1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->setVoucherCode(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$62;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$62;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1450
    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method signUp(Ljava/lang/String;Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signUpUrl",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;",
            ">;"
        }
    .end annotation

    .line 1688
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1690
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->signUp(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$73;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$73;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    .line 1691
    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method updateFavoriteChannel(Ljava/lang/String;Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelNumber",
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LoginObject;",
            ">;>;"
        }
    .end annotation

    .line 593
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 595
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->updateFavoriteChannel(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$23;

    invoke-direct {p2, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$23;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method vodToken(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;",
            ">;"
        }
    .end annotation

    .line 1293
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 1295
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService()Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->vodToken(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$55;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository$55;-><init>(Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;Landroidx/lifecycle/MutableLiveData;)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method
