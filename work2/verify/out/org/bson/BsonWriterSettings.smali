.class public Lorg/bson/BsonWriterSettings;
.super Ljava/lang/Object;
.source "BsonWriterSettings.java"


# instance fields
.field private final maxSerializationDepth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x400

    .line 3
    invoke-direct {p0, v0}, Lorg/bson/BsonWriterSettings;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/bson/BsonWriterSettings;->maxSerializationDepth:I

    return-void
.end method


# virtual methods
.method public getMaxSerializationDepth()I
    .registers 2

    iget v0, p0, Lorg/bson/BsonWriterSettings;->maxSerializationDepth:I

    return v0
.end method
