.class public final Lcom/google/ads/interactivemedia/v3/internal/f;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/m;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/m;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/j;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/l;


# direct methods
.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/j;Lcom/google/ads/interactivemedia/v3/internal/l;Lcom/google/ads/interactivemedia/v3/internal/m;Lcom/google/ads/interactivemedia/v3/internal/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/f;->c:Lcom/google/ads/interactivemedia/v3/internal/j;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/f;->d:Lcom/google/ads/interactivemedia/v3/internal/l;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/f;->a:Lcom/google/ads/interactivemedia/v3/internal/m;

    if-nez p4, :cond_0

    .line 1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/m;->c:Lcom/google/ads/interactivemedia/v3/internal/m;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/f;->b:Lcom/google/ads/interactivemedia/v3/internal/m;

    return-void

    :cond_0
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/f;->b:Lcom/google/ads/interactivemedia/v3/internal/m;

    return-void
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/j;Lcom/google/ads/interactivemedia/v3/internal/l;Lcom/google/ads/interactivemedia/v3/internal/m;Lcom/google/ads/interactivemedia/v3/internal/m;)Lcom/google/ads/interactivemedia/v3/internal/f;
    .locals 2

    const-string v0, "CreativeType is null"

    .line 2
    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ImpressionType is null"

    .line 3
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Impression owner is null"

    .line 4
    invoke-static {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/m;->c:Lcom/google/ads/interactivemedia/v3/internal/m;

    if-eq p2, v0, :cond_4

    .line 7
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/j;->a:Lcom/google/ads/interactivemedia/v3/internal/j;

    const-string v1, "ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript"

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/m;->a:Lcom/google/ads/interactivemedia/v3/internal/m;

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/l;->a:Lcom/google/ads/interactivemedia/v3/internal/l;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/m;->a:Lcom/google/ads/interactivemedia/v3/internal/m;

    if-eq p2, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    :goto_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/f;

    .line 9
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/f;-><init>(Lcom/google/ads/interactivemedia/v3/internal/j;Lcom/google/ads/interactivemedia/v3/internal/l;Lcom/google/ads/interactivemedia/v3/internal/m;Lcom/google/ads/interactivemedia/v3/internal/m;)V

    return-object v0

    .line 5
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Impression owner is none"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/f;->a:Lcom/google/ads/interactivemedia/v3/internal/m;

    const-string v2, "impressionOwner"

    .line 13
    invoke-static {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ah;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/f;->c:Lcom/google/ads/interactivemedia/v3/internal/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/f;->d:Lcom/google/ads/interactivemedia/v3/internal/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/f;->b:Lcom/google/ads/interactivemedia/v3/internal/m;

    const-string v2, "mediaEventsOwner"

    .line 15
    invoke-static {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ah;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/f;->c:Lcom/google/ads/interactivemedia/v3/internal/j;

    const-string v2, "creativeType"

    .line 16
    invoke-static {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ah;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/f;->d:Lcom/google/ads/interactivemedia/v3/internal/l;

    const-string v2, "impressionType"

    .line 17
    invoke-static {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ah;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/f;->b:Lcom/google/ads/interactivemedia/v3/internal/m;

    const-string v2, "videoEventsOwner"

    .line 14
    invoke-static {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ah;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 v1, 0x1

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isolateVerificationScripts"

    invoke-static {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ah;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
