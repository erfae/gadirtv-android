.class Lcom/novoda/merlin/RequestException;
.super Ljava/lang/RuntimeException;
.source "RequestException.java"


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method causedByIO()Z
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/novoda/merlin/RequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    return v0
.end method
