.class public Lcom/visualon/OSMPPlayerImpl/VOOSMPSessionDataImpl;
.super Ljava/lang/Object;
.source "VOOSMPSessionDataImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPSessionData;


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSessionDataImpl;->items:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSessionDataImpl;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDataID(I)Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSessionDataImpl;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->getDataID()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLanguage(I)Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSessionDataImpl;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->getLanguage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSessionDataImpl;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->getURI()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSessionDataImpl;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
