.class public Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;
.super Ljava/lang/Object;
.source "voOSAudioInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSAudioInfo;


# instance fields
.field private mFormat:Lcom/visualon/OSMPUtils/voOSAudioFormat;

.field private mLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPUtils/voOSAudioFormat;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;->mFormat:Lcom/visualon/OSMPUtils/voOSAudioFormat;

    .line 47
    iput-object p2, p0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;->mLanguage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Format()Lcom/visualon/OSMPUtils/voOSAudioFormat;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;->mFormat:Lcom/visualon/OSMPUtils/voOSAudioFormat;

    return-object v0
.end method

.method public Language()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 4

    .line 56
    new-instance v0, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPUtils/voOSAudioFormatImpl;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;->mFormat:Lcom/visualon/OSMPUtils/voOSAudioFormat;

    .line 57
    invoke-interface {v0, p1}, Lcom/visualon/OSMPUtils/voOSAudioFormat;->parse(Landroid/os/Parcel;)Z

    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 59
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 61
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "utf-8"

    invoke-direct {p1, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;->mLanguage:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSAudioInfoImpl;->mLanguage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
