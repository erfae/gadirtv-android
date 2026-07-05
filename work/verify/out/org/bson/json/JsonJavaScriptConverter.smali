.class Lorg/bson/json/JsonJavaScriptConverter;
.super Ljava/lang/Object;
.source "JsonJavaScriptConverter.java"

# interfaces
.implements Lorg/bson/json/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bson/json/Converter<",
        "Ljava/lang/String;",
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
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/bson/json/JsonJavaScriptConverter;->convert(Ljava/lang/String;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method

.method public convert(Ljava/lang/String;Lorg/bson/json/StrictJsonWriter;)V
    .registers 4

    .line 2
    invoke-interface {p2}, Lorg/bson/json/StrictJsonWriter;->writeStartObject()V

    const-string v0, "$code"

    .line 3
    invoke-interface {p2, v0, p1}, Lorg/bson/json/StrictJsonWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-interface {p2}, Lorg/bson/json/StrictJsonWriter;->writeEndObject()V

    return-void
.end method
