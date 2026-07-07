.class public Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;
.super Ljava/lang/Object;
.source "voOSSessionDataImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSSessionDataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Item"
.end annotation


# instance fields
.field private mDataID:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mURI:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/visualon/OSMPUtils/voOSSessionDataImpl;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPUtils/voOSSessionDataImpl;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->this$0:Lcom/visualon/OSMPUtils/voOSSessionDataImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->mDataID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->mDataID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->mValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->mURI:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->mURI:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->mLanguage:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getDataID()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->mDataID:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->mURI:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->mValue:Ljava/lang/String;

    return-object v0
.end method
