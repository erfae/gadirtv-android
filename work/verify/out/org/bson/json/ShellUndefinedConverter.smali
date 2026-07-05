.class Lorg/bson/json/ShellUndefinedConverter;
.super Ljava/lang/Object;
.source "ShellUndefinedConverter.java"

# interfaces
.implements Lorg/bson/json/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bson/json/Converter<",
        "Lorg/bson/BsonUndefined;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V
    .registers 3

    .line 1
    check-cast p1, Lorg/bson/BsonUndefined;

    invoke-virtual {p0, p1, p2}, Lorg/bson/json/ShellUndefinedConverter;->convert(Lorg/bson/BsonUndefined;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public convert(Lorg/bson/BsonUndefined;Lorg/bson/json/StrictJsonWriter;)V
    .registers 3

    const-string p1, "undefined"

    .line 2
    invoke-interface {p2, p1}, Lorg/bson/json/StrictJsonWriter;->writeRaw(Ljava/lang/String;)V

    return-void
.end method
