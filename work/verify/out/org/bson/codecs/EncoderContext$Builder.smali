.class public final Lorg/bson/codecs/EncoderContext$Builder;
.super Ljava/lang/Object;
.source "EncoderContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/codecs/EncoderContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private encodingCollectibleDocument:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bson/codecs/EncoderContext$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/bson/codecs/EncoderContext$Builder;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lorg/bson/codecs/EncoderContext$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/bson/codecs/EncoderContext$Builder;->encodingCollectibleDocument:Z

    return p0
.end method


# virtual methods
.method public build()Lorg/bson/codecs/EncoderContext;
    .registers 3

    new-instance v0, Lorg/bson/codecs/EncoderContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bson/codecs/EncoderContext;-><init>(Lorg/bson/codecs/EncoderContext$Builder;Lorg/bson/codecs/EncoderContext$1;)V

    return-object v0
.end method

.method public isEncodingCollectibleDocument(Z)Lorg/bson/codecs/EncoderContext$Builder;
    .registers 2

    iput-boolean p1, p0, Lorg/bson/codecs/EncoderContext$Builder;->encodingCollectibleDocument:Z

    return-object p0
.end method
