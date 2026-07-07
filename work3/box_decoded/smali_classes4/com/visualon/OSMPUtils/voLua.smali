.class public Lcom/visualon/OSMPUtils/voLua;
.super Ljava/lang/Object;
.source "voLua.java"


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "voLua"

.field private static final TAG:Ljava/lang/String; = "@@@voLua.java"

.field private static mJNILoaded:Z


# instance fields
.field private mLuaJNIPlayer:J

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voLua;->mNativeContext:J

    .line 22
    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voLua;->mLuaJNIPlayer:J

    return-void
.end method

.method private static loadJNI(Ljava/lang/String;)Z
    .locals 2

    .line 26
    sget-boolean v0, Lcom/visualon/OSMPUtils/voLua;->mJNILoaded:Z

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const-string v0, "voLua"

    .line 27
    invoke-static {p0, v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadProductLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/visualon/OSMPUtils/voLua;->mJNILoaded:Z

    if-nez p0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "@@@voLua.java"

    const-string v1, "Fail to load JNI library"

    .line 28
    invoke-static {v0, v1, p0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :cond_1
    sget-boolean p0, Lcom/visualon/OSMPUtils/voLua;->mJNILoaded:Z

    return p0
.end method

.method private native nativeCreate(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method private native nativeDestroy()I
.end method

.method private native nativeVOEvent(IIILjava/lang/Object;)I
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/visualon/OSMPUtils/voLua;->init(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public init(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "voLua"

    .line 39
    invoke-static {p1, v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadProductLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    .line 42
    iput-wide v2, p0, Lcom/visualon/OSMPUtils/voLua;->mNativeContext:J

    const-string v0, ""

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 45
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/visualon/OSMPUtils/voLua;->nativeCreate(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 47
    iget-wide p1, p0, Lcom/visualon/OSMPUtils/voLua;->mNativeContext:J

    cmp-long p3, v2, p1

    if-nez p3, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onVOEvent(IIILjava/lang/Object;)I
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/visualon/OSMPUtils/voLua;->nativeVOEvent(IIILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public uninit()Z
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voLua;->nativeDestroy()I

    const/4 v0, 0x1

    return v0
.end method
