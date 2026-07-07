.class public final Lorg/bson/diagnostics/Loggers;
.super Ljava/lang/Object;
.source "Loggers.java"


# static fields
.field public static final PREFIX:Ljava/lang/String; = "org.bson"

.field private static final USE_SLF4J:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/bson/diagnostics/Loggers;->shouldUseSLF4J()Z

    move-result v0

    sput-boolean v0, Lorg/bson/diagnostics/Loggers;->USE_SLF4J:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/bson/diagnostics/Logger;
    .registers 3

    const-string v0, "suffix"

    .line 1
    invoke-static {v0, p0}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "."

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "org.bson."

    .line 3
    invoke-static {v0, p0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-boolean v0, Lorg/bson/diagnostics/Loggers;->USE_SLF4J:Z

    if-eqz v0, :cond_23

    .line 5
    new-instance v0, Lorg/bson/diagnostics/SLF4JLogger;

    invoke-direct {v0, p0}, Lorg/bson/diagnostics/SLF4JLogger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_23
    new-instance v0, Lorg/bson/diagnostics/JULLogger;

    invoke-direct {v0, p0}, Lorg/bson/diagnostics/JULLogger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The suffix can not start or end with a \'.\'"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static shouldUseSLF4J()Z
    .registers 1

    :try_start_0
    const-string v0, "org.slf4j.Logger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method
