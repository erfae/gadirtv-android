.class public final synthetic Lcom/magoware/magoware/webtv/network/mvvm/-$$Lambda$RetrofitHelper$pakbCiqDGhJ04NMwwl8x4TAKwUo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final synthetic INSTANCE:Lcom/magoware/magoware/webtv/network/mvvm/-$$Lambda$RetrofitHelper$pakbCiqDGhJ04NMwwl8x4TAKwUo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/-$$Lambda$RetrofitHelper$pakbCiqDGhJ04NMwwl8x4TAKwUo;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/-$$Lambda$RetrofitHelper$pakbCiqDGhJ04NMwwl8x4TAKwUo;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/mvvm/-$$Lambda$RetrofitHelper$pakbCiqDGhJ04NMwwl8x4TAKwUo;->INSTANCE:Lcom/magoware/magoware/webtv/network/mvvm/-$$Lambda$RetrofitHelper$pakbCiqDGhJ04NMwwl8x4TAKwUo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->lambda$getOkHttpClient$1(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
