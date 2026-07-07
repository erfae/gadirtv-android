.class public Lcom/novoda/merlin/Endpoint;
.super Ljava/lang/Object;
.source "Endpoint.java"


# static fields
.field private static final CAPTIVE_PORTAL_ENDPOINT:Lcom/novoda/merlin/Endpoint;


# instance fields
.field private final endpoint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://connectivitycheck.android.com/generate_204"

    .line 8
    invoke-static {v0}, Lcom/novoda/merlin/Endpoint;->from(Ljava/lang/String;)Lcom/novoda/merlin/Endpoint;

    move-result-object v0

    sput-object v0, Lcom/novoda/merlin/Endpoint;->CAPTIVE_PORTAL_ENDPOINT:Lcom/novoda/merlin/Endpoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/novoda/merlin/Endpoint;->endpoint:Ljava/lang/String;

    return-void
.end method

.method public static captivePortalEndpoint()Lcom/novoda/merlin/Endpoint;
    .locals 1

    .line 13
    sget-object v0, Lcom/novoda/merlin/Endpoint;->CAPTIVE_PORTAL_ENDPOINT:Lcom/novoda/merlin/Endpoint;

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lcom/novoda/merlin/Endpoint;
    .locals 1

    .line 17
    new-instance v0, Lcom/novoda/merlin/Endpoint;

    invoke-direct {v0, p0}, Lcom/novoda/merlin/Endpoint;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public asURL()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/novoda/merlin/Endpoint;->endpoint:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 44
    :cond_1
    check-cast p1, Lcom/novoda/merlin/Endpoint;

    .line 46
    iget-object v2, p0, Lcom/novoda/merlin/Endpoint;->endpoint:Ljava/lang/String;

    iget-object p1, p1, Lcom/novoda/merlin/Endpoint;->endpoint:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/novoda/merlin/Endpoint;->endpoint:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Endpoint{endpoint=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/novoda/merlin/Endpoint;->endpoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
