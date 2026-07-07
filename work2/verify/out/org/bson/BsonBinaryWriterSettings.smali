.class public Lorg/bson/BsonBinaryWriterSettings;
.super Ljava/lang/Object;
.source "BsonBinaryWriterSettings.java"


# instance fields
.field private final maxDocumentSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const v0, 0x7fffffff

    .line 3
    invoke-direct {p0, v0}, Lorg/bson/BsonBinaryWriterSettings;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/bson/BsonBinaryWriterSettings;->maxDocumentSize:I

    return-void
.end method


# virtual methods
.method public getMaxDocumentSize()I
    .registers 2

    iget v0, p0, Lorg/bson/BsonBinaryWriterSettings;->maxDocumentSize:I

    return v0
.end method
