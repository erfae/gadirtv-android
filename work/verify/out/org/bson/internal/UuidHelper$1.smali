.class synthetic Lorg/bson/internal/UuidHelper$1;
.super Ljava/lang/Object;
.source "UuidHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/internal/UuidHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$org$bson$UuidRepresentation:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lorg/bson/UuidRepresentation;->values()[Lorg/bson/UuidRepresentation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/bson/internal/UuidHelper$1;->$SwitchMap$org$bson$UuidRepresentation:[I

    :try_start_9
    sget-object v1, Lorg/bson/UuidRepresentation;->C_SHARP_LEGACY:Lorg/bson/UuidRepresentation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/bson/internal/UuidHelper$1;->$SwitchMap$org$bson$UuidRepresentation:[I

    sget-object v1, Lorg/bson/UuidRepresentation;->JAVA_LEGACY:Lorg/bson/UuidRepresentation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lorg/bson/internal/UuidHelper$1;->$SwitchMap$org$bson$UuidRepresentation:[I

    sget-object v1, Lorg/bson/UuidRepresentation;->PYTHON_LEGACY:Lorg/bson/UuidRepresentation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lorg/bson/internal/UuidHelper$1;->$SwitchMap$org$bson$UuidRepresentation:[I

    sget-object v1, Lorg/bson/UuidRepresentation;->STANDARD:Lorg/bson/UuidRepresentation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
