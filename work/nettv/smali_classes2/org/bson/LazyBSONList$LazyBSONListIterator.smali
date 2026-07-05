.class public Lorg/bson/LazyBSONList$LazyBSONListIterator;
.super Ljava/lang/Object;
.source "LazyBSONList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/LazyBSONList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LazyBSONListIterator"
.end annotation


# instance fields
.field private cachedBsonType:Lorg/bson/BsonType;

.field private final reader:Lorg/bson/BsonBinaryReader;

.field public final synthetic this$0:Lorg/bson/LazyBSONList;


# direct methods
.method public constructor <init>(Lorg/bson/LazyBSONList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bson/LazyBSONList$LazyBSONListIterator;->this$0:Lorg/bson/LazyBSONList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/bson/LazyBSONObject;->getBsonReader()Lorg/bson/BsonBinaryReader;

    move-result-object p1

    iput-object p1, p0, Lorg/bson/LazyBSONList$LazyBSONListIterator;->reader:Lorg/bson/BsonBinaryReader;

    .line 3
    invoke-virtual {p1}, Lorg/bson/AbstractBsonReader;->readStartDocument()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bson/LazyBSONList$LazyBSONListIterator;->cachedBsonType:Lorg/bson/BsonType;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/bson/LazyBSONList$LazyBSONListIterator;->reader:Lorg/bson/BsonBinaryReader;

    invoke-virtual {v0}, Lorg/bson/BsonBinaryReader;->readBsonType()Lorg/bson/BsonType;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/LazyBSONList$LazyBSONListIterator;->cachedBsonType:Lorg/bson/BsonType;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/bson/LazyBSONList$LazyBSONListIterator;->cachedBsonType:Lorg/bson/BsonType;

    sget-object v1, Lorg/bson/BsonType;->END_OF_DOCUMENT:Lorg/bson/BsonType;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bson/LazyBSONList$LazyBSONListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/bson/LazyBSONList$LazyBSONListIterator;->cachedBsonType:Lorg/bson/BsonType;

    .line 3
    iget-object v0, p0, Lorg/bson/LazyBSONList$LazyBSONListIterator;->reader:Lorg/bson/BsonBinaryReader;

    invoke-virtual {v0}, Lorg/bson/AbstractBsonReader;->readName()Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lorg/bson/LazyBSONList$LazyBSONListIterator;->this$0:Lorg/bson/LazyBSONList;

    iget-object v1, p0, Lorg/bson/LazyBSONList$LazyBSONListIterator;->reader:Lorg/bson/BsonBinaryReader;

    invoke-virtual {v0, v1}, Lorg/bson/LazyBSONObject;->readValue(Lorg/bson/BsonBinaryReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
