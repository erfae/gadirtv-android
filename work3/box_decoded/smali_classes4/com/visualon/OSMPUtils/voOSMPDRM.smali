.class public Lcom/visualon/OSMPUtils/voOSMPDRM;
.super Ljava/lang/Object;
.source "voOSMPDRM.java"


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "voDRMWrapJni"

.field private static final TAG:Ljava/lang/String; = "@@@voOSMPDRM"

.field private static mJNILoaded:Z


# instance fields
.field private mDrmHandle:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSMPDRM;->mDrmHandle:Ljava/lang/Long;

    return-void
.end method

.method private static loadJNI(Ljava/lang/String;)Z
    .locals 2

    .line 80
    sget-boolean v0, Lcom/visualon/OSMPUtils/voOSMPDRM;->mJNILoaded:Z

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const-string v0, "voDRMWrapJni"

    .line 81
    invoke-static {p0, v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadProductLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/visualon/OSMPUtils/voOSMPDRM;->mJNILoaded:Z

    if-nez p0, :cond_1

    .line 83
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "@@@voOSMPDRM"

    const-string v1, "Fail to load JNI library"

    .line 84
    invoke-static {v0, v1, p0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :cond_1
    sget-boolean p0, Lcom/visualon/OSMPUtils/voOSMPDRM;->mJNILoaded:Z

    return p0
.end method

.method private native nativeCreatDRM(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeDestoryDRM(Ljava/lang/Long;)I
.end method


# virtual methods
.method public creatDRM(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 34
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "@@@voOSMPDRM"

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Creat DRM handle by lib name "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/visualon/OSMPUtils/voOSMPDRM;->loadJNI(Ljava/lang/String;)Z

    move-result v0

    const v3, -0x7ffffff1

    if-nez v0, :cond_1

    return v3

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSMPDRM;->mDrmHandle:Ljava/lang/Long;

    .line 43
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPUtils/voOSMPDRM;->nativeCreatDRM(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nativeCreatDRM  mDrmHandle: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSMPDRM;->mDrmHandle:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object p2, p0, Lcom/visualon/OSMPUtils/voOSMPDRM;->mDrmHandle:Ljava/lang/Long;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move v3, p1

    goto :goto_0

    :catch_0
    nop

    .line 50
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Call native function creatDRM error."

    .line 51
    invoke-static {v2, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return v3
.end method

.method public destoryDRM()I
    .locals 5

    .line 60
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "@@@voOSMPDRM"

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " destory DRM handle 0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voOSMPDRM;->mDrmHandle:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSMPDRM;->mDrmHandle:Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPUtils/voOSMPDRM;->nativeDestoryDRM(Ljava/lang/Long;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 68
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Call native function nativeDestoryDRM error."

    .line 69
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const v0, -0x7ffffff1

    :goto_0
    return v0
.end method

.method public getmDrmHandle()Ljava/lang/Long;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSMPDRM;->mDrmHandle:Ljava/lang/Long;

    return-object v0
.end method
