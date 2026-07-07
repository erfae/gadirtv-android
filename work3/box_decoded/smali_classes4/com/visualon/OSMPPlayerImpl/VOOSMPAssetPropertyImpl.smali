.class public Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;
.super Ljava/lang/Object;
.source "VOOSMPAssetPropertyImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPAssetPropertyImpl"


# instance fields
.field m_lstProperty:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->m_lstProperty:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->m_lstProperty:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 51
    array-length v1, p1

    if-eqz v1, :cond_2

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->m_lstProperty:Ljava/util/ArrayList;

    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;

    mul-int/lit8 v3, v0, 0x2

    aget-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    aget-object v3, p1, v3

    invoke-direct {v2, p0, v4, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;-><init>(Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPAssetPropertyImpl"

    const-string v1, "VOOSMPAssetProperty info is invalid."

    .line 53
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getKey(I)Ljava/lang/String;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->getPropertyCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->m_lstProperty:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;

    iget-object p1, p1, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;->m_strKey:Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPropertyCount()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->m_lstProperty:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->getPropertyCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->m_lstProperty:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;

    iget-object p1, p1, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;->m_strValue:Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public parse(Landroid/os/Parcel;)V
    .locals 6

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 86
    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->m_lstProperty:Ljava/util/ArrayList;

    new-instance v5, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;

    invoke-direct {v5, p0, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl$AssetProperty;-><init>(Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->getPropertyCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 70
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
