.class public final enum Lcom/google/android/gms/internal/cast/zzgd;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzlg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/cast/zzgd;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzlg;"
    }
.end annotation


# static fields
.field private static final zzagi:Lcom/google/android/gms/internal/cast/zzlf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzlf<",
            "Lcom/google/android/gms/internal/cast/zzgd;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzane:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzanf:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzang:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzanh:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzani:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzanj:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzank:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzanl:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzanm:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzann:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzano:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzanp:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzanq:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzanr:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzans:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzant:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzanu:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzanv:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzanw:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzanx:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzany:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final enum zzanz:Lcom/google/android/gms/internal/cast/zzgd;

.field private static final synthetic zzaoa:[Lcom/google/android/gms/internal/cast/zzgd;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v1, "ERROR_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzgd;->zzane:Lcom/google/android/gms/internal/cast/zzgd;

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v3, "ERROR_PEER_DISCONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/cast/zzgd;->zzanf:Lcom/google/android/gms/internal/cast/zzgd;

    .line 19
    new-instance v3, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v5, "ERROR_IO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/cast/zzgd;->zzang:Lcom/google/android/gms/internal/cast/zzgd;

    .line 20
    new-instance v5, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v7, "ERROR_SSL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/cast/zzgd;->zzanh:Lcom/google/android/gms/internal/cast/zzgd;

    .line 21
    new-instance v7, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v9, "ERROR_TIMEOUT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/cast/zzgd;->zzani:Lcom/google/android/gms/internal/cast/zzgd;

    .line 22
    new-instance v9, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v11, "ERROR_RELAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/cast/zzgd;->zzanj:Lcom/google/android/gms/internal/cast/zzgd;

    .line 23
    new-instance v11, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v13, "ERROR_DEVICE_AUTH"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/cast/zzgd;->zzank:Lcom/google/android/gms/internal/cast/zzgd;

    .line 24
    new-instance v13, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v15, "ERROR_DEVICE_AUTH_ERROR_RECEIVED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/cast/zzgd;->zzanl:Lcom/google/android/gms/internal/cast/zzgd;

    .line 25
    new-instance v15, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v14, "ERROR_DEVICE_AUTH_CLIENT_AUTH_CERT_MALFORMED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/cast/zzgd;->zzanm:Lcom/google/android/gms/internal/cast/zzgd;

    .line 26
    new-instance v14, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v12, "ERROR_DEVICE_AUTH_CLIENT_AUTH_CERT_NOT_X509"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/cast/zzgd;->zzann:Lcom/google/android/gms/internal/cast/zzgd;

    .line 27
    new-instance v12, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v10, "ERROR_DEVICE_AUTH_CLIENT_AUTH_CERT_NOT_TRUSTED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/cast/zzgd;->zzano:Lcom/google/android/gms/internal/cast/zzgd;

    .line 28
    new-instance v10, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v8, "ERROR_DEVICE_AUTH_SSL_CERT_NOT_TRUSTED"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/cast/zzgd;->zzanp:Lcom/google/android/gms/internal/cast/zzgd;

    .line 29
    new-instance v8, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v6, "ERROR_DEVICE_AUTH_RESPONSE_MALFORMED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/cast/zzgd;->zzanq:Lcom/google/android/gms/internal/cast/zzgd;

    .line 30
    new-instance v6, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v4, "ERROR_CANCELED"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/cast/zzgd;->zzanr:Lcom/google/android/gms/internal/cast/zzgd;

    .line 31
    new-instance v4, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v2, "ERROR_CAST_NEARBY_INVALID_REQUEST"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/cast/zzgd;->zzans:Lcom/google/android/gms/internal/cast/zzgd;

    .line 32
    new-instance v2, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v6, "ERROR_CANCELLED"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/cast/zzgd;->zzant:Lcom/google/android/gms/internal/cast/zzgd;

    .line 33
    new-instance v6, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v4, "ERROR_CRL_INVALID"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/cast/zzgd;->zzanu:Lcom/google/android/gms/internal/cast/zzgd;

    .line 34
    new-instance v4, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v2, "ERROR_CRL_REVOCATION_CHECK_FAILED"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/cast/zzgd;->zzanv:Lcom/google/android/gms/internal/cast/zzgd;

    .line 35
    new-instance v2, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v6, "ERROR_DEVICE_AUTH_TIMEOUT"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/cast/zzgd;->zzanw:Lcom/google/android/gms/internal/cast/zzgd;

    .line 36
    new-instance v6, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v4, "ERROR_DEVICE_AUTH_PARSE_FAILURE"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/cast/zzgd;->zzanx:Lcom/google/android/gms/internal/cast/zzgd;

    .line 37
    new-instance v4, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v2, "ERROR_DEVICE_AUTH_CHALLENGE_RECEIVED"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/cast/zzgd;->zzany:Lcom/google/android/gms/internal/cast/zzgd;

    .line 38
    new-instance v2, Lcom/google/android/gms/internal/cast/zzgd;

    const-string v6, "ERROR_OTHER"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    move-object/from16 v24, v8

    const/16 v8, 0x63

    invoke-direct {v2, v6, v4, v8}, Lcom/google/android/gms/internal/cast/zzgd;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/cast/zzgd;->zzanz:Lcom/google/android/gms/internal/cast/zzgd;

    const/16 v6, 0x16

    new-array v6, v6, [Lcom/google/android/gms/internal/cast/zzgd;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v24, v6, v0

    const/16 v0, 0xd

    aput-object v16, v6, v0

    const/16 v0, 0xe

    aput-object v17, v6, v0

    const/16 v0, 0xf

    aput-object v18, v6, v0

    const/16 v0, 0x10

    aput-object v19, v6, v0

    const/16 v0, 0x11

    aput-object v20, v6, v0

    const/16 v0, 0x12

    aput-object v21, v6, v0

    const/16 v0, 0x13

    aput-object v22, v6, v0

    const/16 v0, 0x14

    aput-object v23, v6, v0

    aput-object v2, v6, v4

    .line 39
    sput-object v6, Lcom/google/android/gms/internal/cast/zzgd;->zzaoa:[Lcom/google/android/gms/internal/cast/zzgd;

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/cast/zzgc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzgc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzgd;->zzagi:Lcom/google/android/gms/internal/cast/zzlf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/google/android/gms/internal/cast/zzgd;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/cast/zzgd;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzgd;->zzaoa:[Lcom/google/android/gms/internal/cast/zzgd;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/cast/zzgd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/cast/zzgd;

    return-object v0
.end method

.method public static zzfx()Lcom/google/android/gms/internal/cast/zzli;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/zzgf;->zzago:Lcom/google/android/gms/internal/cast/zzli;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzgd;->value:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzgd;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzfw()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzgd;->value:I

    return v0
.end method
