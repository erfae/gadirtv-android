.class public Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;
.super Ljava/lang/Object;
.source "voOSSubtitleInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSSubtitleInfo;


# instance fields
.field private mAlign:Ljava/lang/String;

.field private mCodingType:I

.field private mLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Align()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mAlign:Ljava/lang/String;

    return-object v0
.end method

.method public CodingType()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mCodingType:I

    return v0
.end method

.method public Language()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 5

    const-string v0, "utf-8"

    const/16 v1, 0x100

    new-array v2, v1, [B

    .line 30
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    const/4 v3, 0x0

    .line 32
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v3, v1, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v4, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mLanguage:Ljava/lang/String;

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mLanguage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 36
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 39
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mCodingType:I

    const/16 v1, 0x8

    new-array v2, v1, [B

    .line 42
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 44
    :try_start_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2, v3, v1, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mAlign:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSSubtitleInfoImpl;->mAlign:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
