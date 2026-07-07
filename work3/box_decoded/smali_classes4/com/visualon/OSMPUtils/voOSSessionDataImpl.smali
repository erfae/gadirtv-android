.class public Lcom/visualon/OSMPUtils/voOSSessionDataImpl;
.super Ljava/lang/Object;
.source "voOSSessionDataImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSSessionData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voOSSessionDataImpl"


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
.method protected constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl;->items:Ljava/util/ArrayList;

    return-void
.end method

.method public static parse(Landroid/os/Parcel;)Lcom/visualon/OSMPUtils/voOSSessionDataImpl;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_0
    new-instance v0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl;-><init>()V

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 93
    new-instance v2, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;

    invoke-direct {v2, v0}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;-><init>(Lcom/visualon/OSMPUtils/voOSSessionDataImpl;)V

    .line 94
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->access$002(Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    if-lt v3, v4, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->access$102(Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    if-lt v3, v4, :cond_2

    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->access$202(Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    if-lt v3, v4, :cond_3

    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->access$302(Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    iget-object v3, v0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->access$000(Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | Value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->access$100(Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | URI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->access$200(Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | Language:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->access$300(Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "@@@voOSSessionDataImpl"

    invoke-static {v4, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 110
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDataID(I)Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->getDataID()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLanguage(I)Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->getLanguage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->getURI()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSessionDataImpl;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSSessionDataImpl$Item;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
