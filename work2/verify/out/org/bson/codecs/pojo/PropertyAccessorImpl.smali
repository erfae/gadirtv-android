.class final Lorg/bson/codecs/pojo/PropertyAccessorImpl;
.super Ljava/lang/Object;
.source "PropertyAccessorImpl.java"

# interfaces
.implements Lorg/bson/codecs/pojo/PropertyAccessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/bson/codecs/pojo/PropertyAccessor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final propertyMetadata:Lorg/bson/codecs/pojo/PropertyMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/codecs/pojo/PropertyMetadata<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bson/codecs/pojo/PropertyMetadata;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/codecs/pojo/PropertyMetadata<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->propertyMetadata:Lorg/bson/codecs/pojo/PropertyMetadata;

    return-void
.end method

.method private getError(Ljava/lang/Exception;)Lorg/bson/codecs/configuration/CodecConfigurationException;
    .registers 6

    .line 1
    new-instance v0, Lorg/bson/codecs/configuration/CodecConfigurationException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->propertyMetadata:Lorg/bson/codecs/pojo/PropertyMetadata;

    invoke-virtual {v2}, Lorg/bson/codecs/pojo/PropertyMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->propertyMetadata:Lorg/bson/codecs/pojo/PropertyMetadata;

    .line 2
    invoke-virtual {v2}, Lorg/bson/codecs/pojo/PropertyMetadata;->getDeclaringClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Unable to get value for property \'%s\' in %s"

    .line 3
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private setError(Ljava/lang/Exception;)Lorg/bson/codecs/configuration/CodecConfigurationException;
    .registers 6

    .line 1
    new-instance v0, Lorg/bson/codecs/configuration/CodecConfigurationException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->propertyMetadata:Lorg/bson/codecs/pojo/PropertyMetadata;

    invoke-virtual {v2}, Lorg/bson/codecs/pojo/PropertyMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->propertyMetadata:Lorg/bson/codecs/pojo/PropertyMetadata;

    .line 2
    invoke-virtual {v2}, Lorg/bson/codecs/pojo/PropertyMetadata;->getDeclaringClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Unable to set value for property \'%s\' in %s"

    .line 3
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->propertyMetadata:Lorg/bson/codecs/pojo/PropertyMetadata;

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/PropertyMetadata;->isSerializable()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->propertyMetadata:Lorg/bson/codecs/pojo/PropertyMetadata;

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 3
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->propertyMetadata:Lorg/bson/codecs/pojo/PropertyMetadata;

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getGetter()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1e
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->propertyMetadata:Lorg/bson/codecs/pojo/PropertyMetadata;

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_29
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->getError(Ljava/lang/Exception;)Lorg/bson/codecs/configuration/CodecConfigurationException;

    move-result-object p1

    throw p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception p1

    .line 6
    invoke-direct {p0, p1}, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->getError(Ljava/lang/Exception;)Lorg/bson/codecs/configuration/CodecConfigurationException;

    move-result-object p1

    throw p1
.end method

.method public final getPropertyMetadata()Lorg/bson/codecs/pojo/PropertyMetadata;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/bson/codecs/pojo/PropertyMetadata<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->propertyMetadata:Lorg/bson/codecs/pojo/PropertyMetadata;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->propertyMetadata:Lorg/bson/codecs/pojo/PropertyMetadata;

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/PropertyMetadata;->isDeserializable()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->propertyMetadata:Lorg/bson/codecs/pojo/PropertyMetadata;

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getSetter()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 3
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->propertyMetadata:Lorg/bson/codecs/pojo/PropertyMetadata;

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getSetter()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 4
    :cond_20
    iget-object v0, p0, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->propertyMetadata:Lorg/bson/codecs/pojo/PropertyMetadata;

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    :cond_29
    :goto_29
    return-void

    :catch_2a
    move-exception p1

    .line 5
    invoke-direct {p0, p1}, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->setError(Ljava/lang/Exception;)Lorg/bson/codecs/configuration/CodecConfigurationException;

    move-result-object p1

    throw p1
.end method
