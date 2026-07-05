.class Lorg/bson/json/ShellInt64Converter;
.super Ljava/lang/Object;
.source "ShellInt64Converter.java"

# interfaces
.implements Lorg/bson/json/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bson/json/Converter<",
        "Ljava/lang/Long;",
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
.method public convert(Ljava/lang/Long;Lorg/bson/json/StrictJsonWriter;)V
    .registers 10

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/32 v4, -0x80000000

    cmp-long v6, v0, v4

    if-ltz v6, :cond_26

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v0, v4

    if-gtz v6, :cond_26

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "NumberLong(%d)"

    .line 3
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/bson/json/StrictJsonWriter;->writeRaw(Ljava/lang/String;)V

    goto :goto_33

    :cond_26
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "NumberLong(\"%d\")"

    .line 4
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/bson/json/StrictJsonWriter;->writeRaw(Ljava/lang/String;)V

    :goto_33
    return-void
.end method

.method public bridge synthetic convert(Ljava/lang/Object;Lorg/bson/json/StrictJsonWriter;)V
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lorg/bson/json/ShellInt64Converter;->convert(Ljava/lang/Long;Lorg/bson/json/StrictJsonWriter;)V

    return-void
.end method
