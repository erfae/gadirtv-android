.class public Lio/jsonwebtoken/impl/io/RuntimeClasspathDeserializerLocator;
.super Ljava/lang/Object;
.source "RuntimeClasspathDeserializerLocator.java"

# interfaces
.implements Lio/jsonwebtoken/impl/io/InstanceLocator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/jsonwebtoken/impl/io/InstanceLocator<",
        "Lio/jsonwebtoken/io/Deserializer<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final DESERIALIZER:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/jsonwebtoken/io/Deserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lio/jsonwebtoken/impl/io/RuntimeClasspathDeserializerLocator;->DESERIALIZER:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected compareAndSet(Lio/jsonwebtoken/io/Deserializer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/jsonwebtoken/io/Deserializer<",
            "TT;>;)Z"
        }
    .end annotation

    .line 44
    sget-object v0, Lio/jsonwebtoken/impl/io/RuntimeClasspathDeserializerLocator;->DESERIALIZER:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getInstance()Lio/jsonwebtoken/io/Deserializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/jsonwebtoken/io/Deserializer<",
            "TT;>;"
        }
    .end annotation

    .line 19
    sget-object v0, Lio/jsonwebtoken/impl/io/RuntimeClasspathDeserializerLocator;->DESERIALIZER:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/jsonwebtoken/io/Deserializer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 21
    invoke-virtual {p0}, Lio/jsonwebtoken/impl/io/RuntimeClasspathDeserializerLocator;->locate()Lio/jsonwebtoken/io/Deserializer;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "locate() cannot return null."

    .line 22
    invoke-static {v4, v5}, Lio/jsonwebtoken/lang/Assert;->state(ZLjava/lang/String;)V

    .line 23
    invoke-virtual {p0, v1}, Lio/jsonwebtoken/impl/io/RuntimeClasspathDeserializerLocator;->compareAndSet(Lio/jsonwebtoken/io/Deserializer;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/jsonwebtoken/io/Deserializer;

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-string v0, "deserializer cannot be null."

    .line 27
    invoke-static {v2, v0}, Lio/jsonwebtoken/lang/Assert;->state(ZLjava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic getInstance()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lio/jsonwebtoken/impl/io/RuntimeClasspathDeserializerLocator;->getInstance()Lio/jsonwebtoken/io/Deserializer;

    move-result-object v0

    return-object v0
.end method

.method protected isAvailable(Ljava/lang/String;)Z
    .locals 0

    .line 49
    invoke-static {p1}, Lio/jsonwebtoken/lang/Classes;->isAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected locate()Lio/jsonwebtoken/io/Deserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/jsonwebtoken/io/Deserializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "com.fasterxml.jackson.databind.ObjectMapper"

    .line 33
    invoke-virtual {p0, v0}, Lio/jsonwebtoken/impl/io/RuntimeClasspathDeserializerLocator;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "io.jsonwebtoken.io.JacksonDeserializer"

    .line 34
    invoke-static {v0}, Lio/jsonwebtoken/lang/Classes;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/jsonwebtoken/io/Deserializer;

    return-object v0

    :cond_0
    const-string v0, "org.json.JSONObject"

    .line 35
    invoke-virtual {p0, v0}, Lio/jsonwebtoken/impl/io/RuntimeClasspathDeserializerLocator;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "io.jsonwebtoken.io.OrgJsonDeserializer"

    .line 36
    invoke-static {v0}, Lio/jsonwebtoken/lang/Classes;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/jsonwebtoken/io/Deserializer;

    return-object v0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to discover any JSON Deserializer implementations on the classpath."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
