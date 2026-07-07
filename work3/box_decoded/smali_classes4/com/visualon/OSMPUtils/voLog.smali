.class public Lcom/visualon/OSMPUtils/voLog;
.super Ljava/lang/Object;
.source "voLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;
    }
.end annotation


# static fields
.field private static final JAVA_MODULE_ID:Ljava/lang/String; = "090B0000"

.field private static final LIB_NAME:Ljava/lang/String; = "voLogSys"

.field private static final SEPARATOR:Ljava/lang/String; = ","

.field private static isInitialized:Z

.field private static mJNILoaded:Z

.field private static mLogSysVer:I

.field private static mNativeContext:J

.field private static m_bPrintLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddConfigure(Ljava/lang/String;)I
    .locals 3

    .line 230
    sget-boolean v0, Lcom/visualon/OSMPUtils/voLog;->mJNILoaded:Z

    if-nez v0, :cond_0

    const p0, -0x7ffffff1

    return p0

    .line 233
    :cond_0
    sget-boolean v0, Lcom/visualon/OSMPUtils/voLog;->isInitialized:Z

    if-nez v0, :cond_1

    const p0, -0x7ffffeff

    return p0

    :cond_1
    const/4 v0, -0x1

    .line 237
    sget v1, Lcom/visualon/OSMPUtils/voLog;->mLogSysVer:I

    const/16 v2, 0x140

    if-lt v1, v2, :cond_2

    .line 238
    sget-wide v0, Lcom/visualon/OSMPUtils/voLog;->mNativeContext:J

    invoke-static {v0, v1, p0}, Lcom/visualon/OSMPUtils/voLog;->nativeAddConfigure(JLjava/lang/String;)I

    move-result v0

    :cond_2
    return v0
.end method

.method public static varargs crash(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 148
    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV1:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    const-string v2, "Crash"

    const/4 v3, 0x7

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs crash2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 143
    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV2:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    const-string v0, ""

    const-string v2, "Crash"

    const/4 v3, 0x7

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 128
    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV1:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    const-string v2, "Debug"

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 124
    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV2:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    const-string v0, ""

    const-string v2, "Debug"

    const/4 v3, 0x3

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 119
    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV1:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    const-string v2, "Error"

    const/4 v3, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 115
    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV2:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    const-string v0, ""

    const-string v2, "Error"

    const/4 v3, 0x6

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    return-void
.end method

.method public static enablePrintLog()Z
    .locals 1

    .line 153
    sget-boolean v0, Lcom/visualon/OSMPUtils/voLog;->m_bPrintLog:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/visualon/OSMPUtils/voLog;->mJNILoaded:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/visualon/OSMPUtils/voLog;->isInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static getDefaultTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 1

    .line 72
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\."

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 74
    aget-object p0, p0, v0

    return-object p0
.end method

.method private static getLogInfo(Ljava/lang/StackTraceElement;Ljava/lang/String;Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 161
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    .line 164
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm:ss|SSS "

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@@@VOLOG"

    .line 165
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-string p1, "%7s"

    .line 166
    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ModuleID[090B0000]"

    .line 167
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ThreadID["

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Line#"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    .line 172
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    .line 173
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 110
    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV1:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    const-string v2, "Info"

    const/4 v3, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 106
    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV2:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    const-string v0, ""

    const-string v2, "Info"

    const/4 v3, 0x4

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    return-void
.end method

.method public static initLogLib(Ljava/lang/String;)I
    .locals 4

    .line 179
    sget-boolean v0, Lcom/visualon/OSMPUtils/voLog;->isInitialized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 182
    :cond_0
    invoke-static {p0}, Lcom/visualon/OSMPUtils/voLog;->loadJNI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const p0, -0x7ffffff1

    return p0

    :cond_1
    const/4 v0, -0x1

    .line 186
    sget-wide v2, Lcom/visualon/OSMPUtils/voLog;->mNativeContext:J

    invoke-static {v2, v3, p0}, Lcom/visualon/OSMPUtils/voLog;->nativeInit(JLjava/lang/String;)I

    move-result p0

    sput p0, Lcom/visualon/OSMPUtils/voLog;->mLogSysVer:I

    const/16 v2, 0x140

    if-eqz p0, :cond_3

    if-lt p0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 189
    sput-boolean v0, Lcom/visualon/OSMPUtils/voLog;->isInitialized:Z

    :goto_1
    if-lt p0, v2, :cond_4

    .line 193
    sget-wide v2, Lcom/visualon/OSMPUtils/voLog;->mNativeContext:J

    invoke-static {v2, v3}, Lcom/visualon/OSMPUtils/voLog;->nativeIsDebug(J)Z

    move-result p0

    sput-boolean p0, Lcom/visualon/OSMPUtils/voLog;->m_bPrintLog:Z

    :cond_4
    return v1
.end method

.method private static loadJNI(Ljava/lang/String;)Z
    .locals 1

    .line 270
    sget-boolean v0, Lcom/visualon/OSMPUtils/voLog;->mJNILoaded:Z

    if-eqz v0, :cond_0

    return v0

    .line 271
    :cond_0
    invoke-static {p0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadOneLibInPath(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/visualon/OSMPUtils/voLog;->mJNILoaded:Z

    if-eqz v0, :cond_1

    return v0

    :cond_1
    const-string v0, "voLogSys"

    .line 274
    invoke-static {p0, v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadReachableLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/visualon/OSMPUtils/voLog;->mJNILoaded:Z

    return p0
.end method

.method private static native nativeAddConfigure(JLjava/lang/String;)I
.end method

.method private static native nativeInit(JLjava/lang/String;)I
.end method

.method private static native nativeInitCrashLogDir(JLjava/lang/String;)I
.end method

.method private static native nativeIsDebug(J)Z
.end method

.method private static native nativeLog(JIILjava/lang/String;)I
.end method

.method private static native nativeUninit(J)I
.end method

.method private static varargs printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V
    .locals 3

    .line 79
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    const-string v1, "No Message."

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 84
    :goto_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x4

    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p5

    array-length p5, p5

    add-int/lit8 p5, p5, -0x1

    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p5

    aget-object p1, p5, p1

    .line 90
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p4, p0}, Lcom/visualon/OSMPUtils/voLog;->getLogInfo(Ljava/lang/StackTraceElement;Ljava/lang/String;Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 91
    sget-wide p1, Lcom/visualon/OSMPUtils/voLog;->mNativeContext:J

    invoke-virtual {p4}, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->getValue()I

    move-result p4

    invoke-static {p1, p2, p3, p4, p0}, Lcom/visualon/OSMPUtils/voLog;->nativeLog(JIILjava/lang/String;)I

    return-void
.end method

.method public static uninitLogLib()I
    .locals 4

    .line 200
    sget-boolean v0, Lcom/visualon/OSMPUtils/voLog;->isInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 202
    :cond_0
    sget-wide v2, Lcom/visualon/OSMPUtils/voLog;->mNativeContext:J

    invoke-static {v2, v3}, Lcom/visualon/OSMPUtils/voLog;->nativeUninit(J)I

    move-result v0

    if-nez v0, :cond_1

    .line 204
    sput-boolean v1, Lcom/visualon/OSMPUtils/voLog;->isInitialized:Z

    :cond_1
    return v0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 101
    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV1:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    const-string v2, "Verbose"

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs v2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 96
    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV2:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    const-string v0, ""

    const-string v2, "Verbose"

    const/4 v3, 0x2

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 137
    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV1:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    const-string v2, "Warning"

    const/4 v3, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w2(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 133
    sget-object v4, Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;->LOGFORV2:Lcom/visualon/OSMPUtils/voLog$FileLevelStatus;

    const-string v0, ""

    const-string v2, "Warning"

    const/4 v3, 0x5

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visualon/OSMPUtils/voLog;->printLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/visualon/OSMPUtils/voLog$FileLevelStatus;[Ljava/lang/Object;)V

    return-void
.end method
