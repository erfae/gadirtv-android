.class public Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;
.super Ljava/lang/Object;
.source "voOSProgramInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSProgramInfo;


# instance fields
.field ProgramID:I

.field ProgramName:Ljava/lang/String;

.field ProgramType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

.field SelInfo:I

.field StreamCount:I

.field StreamInfo:[Lcom/visualon/OSMPUtils/voOSStreamInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;I[Lcom/visualon/OSMPUtils/voOSStreamInfo;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramID:I

    .line 57
    iput p2, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->SelInfo:I

    .line 58
    iput-object p3, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramName:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    .line 60
    iput p5, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamCount:I

    .line 61
    iput-object p6, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamInfo:[Lcom/visualon/OSMPUtils/voOSStreamInfo;

    return-void
.end method


# virtual methods
.method public getProgramID()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramID:I

    return v0
.end method

.method public getProgramName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramName:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    return-object v0
.end method

.method public getSelInfo()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->SelInfo:I

    return v0
.end method

.method public getStreamCount()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamCount:I

    return v0
.end method

.method public getStreamInfo()[Lcom/visualon/OSMPUtils/voOSStreamInfo;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamInfo:[Lcom/visualon/OSMPUtils/voOSStreamInfo;

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 5

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramID:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->SelInfo:I

    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 72
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    const/4 v2, 0x0

    .line 74
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v1, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramName:Ljava/lang/String;

    .line 75
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 81
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 86
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->ProgramType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SRC_PROGRAM_TYPE;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamCount:I

    if-lez v0, :cond_2

    .line 89
    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSStreamInfo;

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamInfo:[Lcom/visualon/OSMPUtils/voOSStreamInfo;

    .line 90
    :cond_2
    :goto_1
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamCount:I

    if-ge v2, v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamInfo:[Lcom/visualon/OSMPUtils/voOSStreamInfo;

    new-instance v3, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;

    invoke-direct {v3}, Lcom/visualon/OSMPUtils/voOSStreamInfoImpl;-><init>()V

    aput-object v3, v0, v2

    .line 93
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSProgramInfoImpl;->StreamInfo:[Lcom/visualon/OSMPUtils/voOSStreamInfo;

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/visualon/OSMPUtils/voOSStreamInfo;->parse(Landroid/os/Parcel;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method
