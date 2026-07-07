.class public final synthetic Lcom/magoware/magoware/webtv/network/-$$Lambda$pzQB0PzWML8y9hmEvRZLjbKiTcQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/magoware/magoware/webtv/network/-$$Lambda$pzQB0PzWML8y9hmEvRZLjbKiTcQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/magoware/magoware/webtv/network/-$$Lambda$pzQB0PzWML8y9hmEvRZLjbKiTcQ;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/-$$Lambda$pzQB0PzWML8y9hmEvRZLjbKiTcQ;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/-$$Lambda$pzQB0PzWML8y9hmEvRZLjbKiTcQ;->INSTANCE:Lcom/magoware/magoware/webtv/network/-$$Lambda$pzQB0PzWML8y9hmEvRZLjbKiTcQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
