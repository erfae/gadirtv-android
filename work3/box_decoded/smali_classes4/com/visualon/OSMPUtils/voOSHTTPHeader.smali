.class public Lcom/visualon/OSMPUtils/voOSHTTPHeader;
.super Ljava/lang/Object;
.source "voOSHTTPHeader.java"


# instance fields
.field private Flag:I

.field private FlagData:Ljava/lang/Object;

.field private HeaderName:Ljava/lang/String;

.field private HeaderValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSHTTPHeader;->HeaderName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/visualon/OSMPUtils/voOSHTTPHeader;->HeaderValue:Ljava/lang/String;

    .line 60
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSHTTPHeader;->Flag:I

    .line 61
    iput-object p4, p0, Lcom/visualon/OSMPUtils/voOSHTTPHeader;->FlagData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSHTTPHeader;->Flag:I

    return v0
.end method

.method public getFlagData()Ljava/lang/Object;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSHTTPHeader;->FlagData:Ljava/lang/Object;

    return-object v0
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSHTTPHeader;->HeaderName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderValue()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSHTTPHeader;->HeaderValue:Ljava/lang/String;

    return-object v0
.end method
