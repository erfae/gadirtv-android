.class Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;
.super Ljava/lang/Object;
.source "EndpointPinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novoda/merlin/EndpointPinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResponseCodeFetcher"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public from(Lcom/novoda/merlin/Endpoint;)I
    .locals 0

    .line 38
    invoke-static {p1}, Lcom/novoda/merlin/MerlinRequest;->head(Lcom/novoda/merlin/Endpoint;)Lcom/novoda/merlin/MerlinRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/novoda/merlin/MerlinRequest;->getResponseCode()I

    move-result p1

    return p1
.end method
