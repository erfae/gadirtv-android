.class public final Lcom/visualon/OSMPUtils/VOSupportEncoding;
.super Ljava/lang/Object;
.source "VOSupportEncoding.java"


# static fields
.field private static final AC3:Ljava/lang/String; = "AC3"

.field private static final EAC3:Ljava/lang/String; = "EAC3"

.field private static final RAW:Ljava/lang/String; = "OMX.google.raw.decoder"


# instance fields
.field private final isPlugged:I

.field private final mCapableEncodings:[I


# direct methods
.method public constructor <init>([II)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 33
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->mCapableEncodings:[I

    .line 34
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 36
    iput-object p1, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->mCapableEncodings:[I

    .line 38
    :goto_0
    iput p2, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->isPlugged:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 65
    :cond_0
    instance-of v1, p1, Lcom/visualon/OSMPUtils/VOSupportEncoding;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 68
    :cond_1
    check-cast p1, Lcom/visualon/OSMPUtils/VOSupportEncoding;

    .line 69
    iget-object v1, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->mCapableEncodings:[I

    iget-object v3, p1, Lcom/visualon/OSMPUtils/VOSupportEncoding;->mCapableEncodings:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->isPlugged:I

    iget p1, p1, Lcom/visualon/OSMPUtils/VOSupportEncoding;->isPlugged:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCapableEncodings()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x6

    .line 49
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPUtils/VOSupportEncoding;->supportsEncoding(I)Z

    move-result v2

    const-string v3, "OMX.google.raw.decoder"

    if-eqz v2, :cond_0

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x5

    .line 52
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPUtils/VOSupportEncoding;->supportsEncoding(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getIsPlugged()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->isPlugged:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->mCapableEncodings:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x21

    return v0
.end method

.method public supportsEncoding(I)Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->mCapableEncodings:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SupportEncoding : capable_encodings ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->mCapableEncodings:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPlugged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/visualon/OSMPUtils/VOSupportEncoding;->isPlugged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
