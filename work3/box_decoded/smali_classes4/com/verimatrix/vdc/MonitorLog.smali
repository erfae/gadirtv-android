.class final Lcom/verimatrix/vdc/MonitorLog;
.super Ljava/lang/Object;
.source "MonitorLog.java"


# static fields
.field private static final MONITOR_ERROR_DESCRIPTION:Ljava/lang/String; = " Method call with wrong params(Null object or empty string on required params):"

.field private static final MONITOR_ERROR_DIVIDER:Ljava/lang/String; = "\n_____________________________________________________________________________"

.field private static final MONITOR_ERROR_TAG:Ljava/lang/String; = "MonitorAgent"

.field private static final PROPERTY_FORMAT:Ljava/lang/String; = "%s:%s"

.field private static final TAG:Ljava/lang/String; = "MonitorLog"

.field private static final UNDERSCORE_SYMBOL:Ljava/lang/String; = "_"

.field static final VDC_API_CALL_TAG:Ljava/lang/String; = "VDC_API CALL: "


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 55
    invoke-static {p0, p1, p2, v0}, Lcom/verimatrix/vdc/MonitorLog;->communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static communications(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 59
    new-instance v0, Lcom/verimatrix/vdc/LogEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[comms] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p2, v1, v2, p3}, Lcom/verimatrix/vdc/LogEvent;-><init>(Ljava/lang/String;J[Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/verimatrix/vdc/MonitorLog;->log(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/LogEvent;)V

    return-void
.end method

.method static event(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 45
    invoke-static {p0, p1, p2, v0}, Lcom/verimatrix/vdc/MonitorLog;->event(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static event(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 49
    new-instance v0, Lcom/verimatrix/vdc/LogEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EVENT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p2, v1, v2, p3}, Lcom/verimatrix/vdc/LogEvent;-><init>(Ljava/lang/String;J[Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/verimatrix/vdc/MonitorLog;->log(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/LogEvent;)V

    return-void
.end method

.method static formatDataArray(Lcom/verimatrix/vdc/SendEvent;)Ljava/lang/String;
    .locals 4

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/verimatrix/vdc/SendEvent;->getD0()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/verimatrix/vdc/SendEvent;->getD1()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/verimatrix/vdc/SendEvent;->getD2()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/verimatrix/vdc/SendEvent;->getD3()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static formatRegisterArray(Lcom/verimatrix/vdc/SendEvent;)Ljava/lang/String;
    .locals 4

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/verimatrix/vdc/SendEvent;->getR0()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/verimatrix/vdc/SendEvent;->getR1()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/verimatrix/vdc/SendEvent;->getR2()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/verimatrix/vdc/SendEvent;->getR3()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFormattedMethodName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "(?=\\p{Upper})"

    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "_"

    .line 171
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLoginProperties(Ljava/util/Map;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$LoginAttribute;",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 180
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 183
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 184
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-virtual {v6}, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v3, "%s:%s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    move v2, v4

    goto :goto_0

    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method public static getMethodName()Ljava/lang/String;
    .locals 3

    .line 156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 157
    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 158
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorLog;->getFormattedMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getProperties(Ljava/util/Map;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "*",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 194
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 197
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 198
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v3, "%s:%s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    move v2, v4

    goto :goto_0

    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method static info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 35
    invoke-static {p0, p1, p2, v0}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 39
    new-instance v0, Lcom/verimatrix/vdc/LogEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[info] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p2, v1, v2, p3}, Lcom/verimatrix/vdc/LogEvent;-><init>(Ljava/lang/String;J[Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/verimatrix/vdc/MonitorLog;->log(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/LogEvent;)V

    return-void
.end method

.method private static log(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/LogEvent;)V
    .locals 15

    move-object/from16 v1, p1

    const/4 v0, 0x1

    .line 92
    :try_start_0
    invoke-static {}, Lcom/verimatrix/vdc/Foreground;->get()Lcom/verimatrix/vdc/Foreground;

    move-result-object v2

    invoke-virtual {v2}, Lcom/verimatrix/vdc/Foreground;->isForeground()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    sget-object v2, Lcom/verimatrix/vdc/MonitorLog;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t detect parent application foreground state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 98
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/verimatrix/vdc/LogEvent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/verimatrix/vdc/LogEvent;->getProperties()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (application in background)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    :cond_0
    sget-object v2, Lcom/verimatrix/vdc/MonitorLog;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual/range {p2 .. p2}, Lcom/verimatrix/vdc/LogEvent;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/verimatrix/vdc/LogEvent;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VDC_API CALL: "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-virtual/range {p2 .. p2}, Lcom/verimatrix/vdc/LogEvent;->getProperties()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/verimatrix/vdc/LogEvent;->getProperties()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_4

    .line 110
    invoke-virtual/range {p2 .. p2}, Lcom/verimatrix/vdc/LogEvent;->getProperties()[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_4

    aget-object v8, v3, v7

    .line 112
    sget-object v9, Lcom/verimatrix/vdc/DebugNetworkService;->EXCLUDED_DEBUG_PROPERTIES:[Ljava/lang/String;

    array-length v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v11, v10, :cond_2

    aget-object v13, v9, v11

    .line 113
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v12, 0x1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    if-nez v12, :cond_3

    .line 118
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 122
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/verimatrix/vdc/LogEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 124
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/verimatrix/vdc/LogEvent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/verimatrix/vdc/LogEvent;->getProperties()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v2, v0

    .line 127
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorAgent;->getGeneratedUid()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 131
    :try_start_1
    invoke-static {}, Lcom/verimatrix/vdc/DatabaseManager;->getInstance()Lcom/verimatrix/vdc/DatabaseManager;

    move-result-object v0

    const-string v4, "limit_value"

    invoke-virtual {v1, v4}, Lcom/verimatrix/vdc/Configuration;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v5, p2

    invoke-virtual {v0, v5, v4}, Lcom/verimatrix/vdc/DatabaseManager;->addLogEvent(Lcom/verimatrix/vdc/LogEvent;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 133
    sget-object v4, Lcom/verimatrix/vdc/MonitorLog;->TAG:Ljava/lang/String;

    const-string v5, "Call MonitorAgent.init() method before use library"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :goto_4
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorAgent;->getLoginManager()Lcom/verimatrix/vdc/MonitorLogin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorLogin;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "debug_active"

    .line 136
    invoke-virtual {v1, v0}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v4, p0

    .line 137
    invoke-static {p0, v3, v2, v1}, Lcom/verimatrix/vdc/NetworkManager;->sendDebug(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;)Z

    goto :goto_5

    .line 139
    :cond_6
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorAgent;->getLoginManager()Lcom/verimatrix/vdc/MonitorLogin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorLogin;->isLoginInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 140
    invoke-static {}, Lcom/verimatrix/vdc/RequestQueue;->getInstance()Lcom/verimatrix/vdc/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/verimatrix/vdc/RequestQueue$DebugRequest;

    invoke-direct {v1, v3, v2}, Lcom/verimatrix/vdc/RequestQueue$DebugRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/RequestQueue;->add(Lcom/verimatrix/vdc/RequestQueue$Request;)V

    :cond_7
    :goto_5
    return-void
.end method

.method static methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 65
    invoke-static {p0, p1, p2, v0}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 69
    new-instance v0, Lcom/verimatrix/vdc/LogEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VDC_API CALL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    :goto_0
    invoke-direct {v0, p2, v1, v2, p3}, Lcom/verimatrix/vdc/LogEvent;-><init>(Ljava/lang/String;J[Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/verimatrix/vdc/MonitorLog;->log(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/LogEvent;)V

    return-void
.end method

.method static varargs methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Method call with wrong params(Null object or empty string on required params):"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n Method: "

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 78
    array-length p0, p1

    if-eqz p0, :cond_0

    .line 79
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ":\\s*,"

    const-string v1, ":\"\","

    .line 80
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ":\\s*]"

    const-string v1, ":\"\"]"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ", params:"

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, "\n_____________________________________________________________________________"

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MonitorAgent"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
