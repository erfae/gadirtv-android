.class public final Lcom/google/gson/internal/bind/JsonTreeWriter;
.super Lcom/google/gson/stream/JsonWriter;
.source "JsonTreeWriter.java"


# static fields
.field private static final SENTINEL_CLOSED:Lcom/google/gson/JsonPrimitive;

.field private static final UNWRITABLE_WRITER:Ljava/io/Writer;


# instance fields
.field private pendingName:Ljava/lang/String;

.field private product:Lcom/google/gson/JsonElement;

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/gson/internal/bind/JsonTreeWriter$1;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/JsonTreeWriter$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/JsonTreeWriter;->UNWRITABLE_WRITER:Ljava/io/Writer;

    .line 2
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gson/internal/bind/JsonTreeWriter;->SENTINEL_CLOSED:Lcom/google/gson/JsonPrimitive;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lcom/google/gson/internal/bind/JsonTreeWriter;->UNWRITABLE_WRITER:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    .line 3
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    iput-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->product:Lcom/google/gson/JsonElement;

    return-void
.end method

.method private peek()Lcom/google/gson/JsonElement;
    .registers 3

    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method private put(Lcom/google/gson/JsonElement;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3
    :cond_10
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->peek()Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 4
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_1b
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    goto :goto_37

    .line 6
    :cond_1f
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 7
    iput-object p1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->product:Lcom/google/gson/JsonElement;

    goto :goto_37

    .line 8
    :cond_2a
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->peek()Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/google/gson/JsonArray;

    if-eqz v1, :cond_38

    .line 10
    check-cast v0, Lcom/google/gson/JsonArray;

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :goto_37
    return-void

    .line 11
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public beginArray()Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    .line 3
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public beginObject()Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    .line 3
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    sget-object v1, Lcom/google/gson/internal/bind/JsonTreeWriter;->SENTINEL_CLOSED:Lcom/google/gson/JsonPrimitive;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 2
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->peek()Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_20

    .line 4
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public endObject()Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 2
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->peek()Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_20

    .line 4
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public get()Lcom/google/gson/JsonElement;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->product:Lcom/google/gson/JsonElement;

    return-object v0

    .line 3
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected one JSON element but was "

    .line 4
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "name == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 3
    invoke-direct {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->peek()Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 4
    instance-of v0, v0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_1c

    .line 5
    iput-object p1, p0, Lcom/google/gson/internal/bind/JsonTreeWriter;->pendingName:Ljava/lang/String;

    return-object p0

    .line 6
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 7
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public nullValue()Lcom/google/gson/stream/JsonWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    return-object p0
.end method

.method public value(D)Lcom/google/gson/stream/JsonWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_2a

    .line 7
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2a
    :goto_2a
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    return-object p0
.end method

.method public value(J)Lcom/google/gson/stream/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    .line 4
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object p1

    return-object p1

    .line 5
    :cond_7
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    .line 10
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object p1

    return-object p1

    .line 11
    :cond_7
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v0

    if-nez v0, :cond_35

    .line 12
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_35

    .line 14
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_35
    :goto_35
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    return-object p0
.end method

.method public value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    return-object p0
.end method

.method public value(Z)Lcom/google/gson/stream/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/JsonTreeWriter;->put(Lcom/google/gson/JsonElement;)V

    return-object p0
.end method
