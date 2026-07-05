.class synthetic Lorg/bson/BsonDocumentReader$1;
.super Ljava/lang/Object;
.source "BsonDocumentReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/BsonDocumentReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$bson$BsonContextType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lorg/bson/BsonContextType;->values()[Lorg/bson/BsonContextType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bson/BsonDocumentReader$1;->$SwitchMap$org$bson$BsonContextType:[I

    :try_start_9
    sget-object v1, Lorg/bson/BsonContextType;->ARRAY:Lorg/bson/BsonContextType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/bson/BsonDocumentReader$1;->$SwitchMap$org$bson$BsonContextType:[I

    sget-object v1, Lorg/bson/BsonContextType;->DOCUMENT:Lorg/bson/BsonContextType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lorg/bson/BsonDocumentReader$1;->$SwitchMap$org$bson$BsonContextType:[I

    sget-object v1, Lorg/bson/BsonContextType;->TOP_LEVEL:Lorg/bson/BsonContextType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
