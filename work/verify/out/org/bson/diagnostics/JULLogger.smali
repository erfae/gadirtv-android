.class Lorg/bson/diagnostics/JULLogger;
.super Ljava/lang/Object;
.source "JULLogger.java"

# interfaces
.implements Lorg/bson/diagnostics/Logger;


# instance fields
.field private final delegate:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/bson/diagnostics/JULLogger;->delegate:Ljava/util/logging/Logger;

    return-void
.end method

.method private isEnabled(Ljava/util/logging/Level;)Z
    .registers 3

    iget-object v0, p0, Lorg/bson/diagnostics/JULLogger;->delegate:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    return p1
.end method

.method private log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/bson/diagnostics/JULLogger;->delegate:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1}, Lorg/bson/diagnostics/JULLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lorg/bson/diagnostics/JULLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1}, Lorg/bson/diagnostics/JULLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lorg/bson/diagnostics/JULLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/diagnostics/JULLogger;->delegate:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1}, Lorg/bson/diagnostics/JULLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lorg/bson/diagnostics/JULLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {p0, v0}, Lorg/bson/diagnostics/JULLogger;->isEnabled(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .registers 3

    iget-object v0, p0, Lorg/bson/diagnostics/JULLogger;->delegate:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .registers 3

    iget-object v0, p0, Lorg/bson/diagnostics/JULLogger;->delegate:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .registers 2

    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v0}, Lorg/bson/diagnostics/JULLogger;->isEnabled(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 3

    iget-object v0, p0, Lorg/bson/diagnostics/JULLogger;->delegate:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lorg/bson/diagnostics/JULLogger;->delegate:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1}, Lorg/bson/diagnostics/JULLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lorg/bson/diagnostics/JULLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1}, Lorg/bson/diagnostics/JULLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lorg/bson/diagnostics/JULLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
