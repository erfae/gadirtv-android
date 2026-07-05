.class Lorg/bson/diagnostics/SLF4JLogger;
.super Ljava/lang/Object;
.source "SLF4JLogger.java"

# interfaces
.implements Lorg/bson/diagnostics/Logger;


# instance fields
.field private final delegate:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .registers 2

    iget-object v0, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .registers 2

    iget-object v0, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .registers 2

    iget-object v0, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .registers 2

    iget-object v0, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .registers 2

    iget-object v0, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lorg/bson/diagnostics/SLF4JLogger;->delegate:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
