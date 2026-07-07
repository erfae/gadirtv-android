.class Lorg/bson/json/JsonStringBuffer;
.super Ljava/lang/Object;
.source "JsonStringBuffer.java"

# interfaces
.implements Lorg/bson/json/JsonBuffer;


# instance fields
.field private final buffer:Ljava/lang/String;

.field private eof:Z

.field private position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bson/json/JsonStringBuffer;->buffer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public discard(I)V
    .registers 2

    return-void
.end method

.method public getPosition()I
    .registers 2

    iget v0, p0, Lorg/bson/json/JsonStringBuffer;->position:I

    return v0
.end method

.method public mark()I
    .registers 2

    iget v0, p0, Lorg/bson/json/JsonStringBuffer;->position:I

    return v0
.end method

.method public read()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lorg/bson/json/JsonStringBuffer;->eof:Z

    if-nez v0, :cond_20

    .line 2
    iget v0, p0, Lorg/bson/json/JsonStringBuffer;->position:I

    iget-object v1, p0, Lorg/bson/json/JsonStringBuffer;->buffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_13

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/bson/json/JsonStringBuffer;->eof:Z

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_13
    iget-object v0, p0, Lorg/bson/json/JsonStringBuffer;->buffer:Ljava/lang/String;

    iget v1, p0, Lorg/bson/json/JsonStringBuffer;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bson/json/JsonStringBuffer;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 5
    :cond_20
    new-instance v0, Lorg/bson/json/JsonParseException;

    const-string v1, "Trying to read past EOF."

    invoke-direct {v0, v1}, Lorg/bson/json/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset(I)V
    .registers 3

    .line 1
    iget v0, p0, Lorg/bson/json/JsonStringBuffer;->position:I

    if-gt p1, v0, :cond_7

    .line 2
    iput p1, p0, Lorg/bson/json/JsonStringBuffer;->position:I

    return-void

    .line 3
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "mark cannot reset ahead of position, only back"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unread(I)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/bson/json/JsonStringBuffer;->eof:Z

    const/4 v0, -0x1

    if-eq p1, v0, :cond_18

    .line 2
    iget-object v0, p0, Lorg/bson/json/JsonStringBuffer;->buffer:Ljava/lang/String;

    iget v1, p0, Lorg/bson/json/JsonStringBuffer;->position:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_18

    .line 3
    iget p1, p0, Lorg/bson/json/JsonStringBuffer;->position:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/bson/json/JsonStringBuffer;->position:I

    :cond_18
    return-void
.end method
