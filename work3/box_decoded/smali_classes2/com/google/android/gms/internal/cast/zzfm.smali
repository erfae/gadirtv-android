.class public final enum Lcom/google/android/gms/internal/cast/zzfm;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzlg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/cast/zzfm;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzlg;"
    }
.end annotation


# static fields
.field private static final zzagi:Lcom/google/android/gms/internal/cast/zzlf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzlf<",
            "Lcom/google/android/gms/internal/cast/zzfm;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzalz:Lcom/google/android/gms/internal/cast/zzfm;

.field private static final enum zzama:Lcom/google/android/gms/internal/cast/zzfm;

.field private static final enum zzamb:Lcom/google/android/gms/internal/cast/zzfm;

.field private static final enum zzamc:Lcom/google/android/gms/internal/cast/zzfm;

.field private static final enum zzamd:Lcom/google/android/gms/internal/cast/zzfm;

.field private static final enum zzame:Lcom/google/android/gms/internal/cast/zzfm;

.field private static final enum zzamf:Lcom/google/android/gms/internal/cast/zzfm;

.field private static final enum zzamg:Lcom/google/android/gms/internal/cast/zzfm;

.field private static final enum zzamh:Lcom/google/android/gms/internal/cast/zzfm;

.field private static final enum zzami:Lcom/google/android/gms/internal/cast/zzfm;

.field private static final synthetic zzamj:[Lcom/google/android/gms/internal/cast/zzfm;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/cast/zzfm;

    const-string v1, "BROADCAST_ERROR_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/cast/zzfm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzfm;->zzalz:Lcom/google/android/gms/internal/cast/zzfm;

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/cast/zzfm;

    const-string v3, "BROADCAST_ERROR_ENCRYPTION_FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/cast/zzfm;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/cast/zzfm;->zzama:Lcom/google/android/gms/internal/cast/zzfm;

    .line 19
    new-instance v3, Lcom/google/android/gms/internal/cast/zzfm;

    const-string v5, "BROADCAST_ERROR_SOCKET_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/cast/zzfm;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/cast/zzfm;->zzamb:Lcom/google/android/gms/internal/cast/zzfm;

    .line 20
    new-instance v5, Lcom/google/android/gms/internal/cast/zzfm;

    const-string v7, "BROADCAST_ERROR_DROPPED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/cast/zzfm;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/cast/zzfm;->zzamc:Lcom/google/android/gms/internal/cast/zzfm;

    .line 21
    new-instance v7, Lcom/google/android/gms/internal/cast/zzfm;

    const-string v9, "BROADCAST_ERROR_KEY_EXCHANGE_INVALID_INPUT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/cast/zzfm;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/cast/zzfm;->zzamd:Lcom/google/android/gms/internal/cast/zzfm;

    .line 22
    new-instance v9, Lcom/google/android/gms/internal/cast/zzfm;

    const-string v11, "BROADCAST_ERROR_KEY_EXCHANGE_INVALID_RESPONSE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/cast/zzfm;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/cast/zzfm;->zzame:Lcom/google/android/gms/internal/cast/zzfm;

    .line 23
    new-instance v11, Lcom/google/android/gms/internal/cast/zzfm;

    const-string v13, "BROADCAST_ERROR_KEY_EXCHANGE_EMPTY_RESPONSE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/cast/zzfm;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/cast/zzfm;->zzamf:Lcom/google/android/gms/internal/cast/zzfm;

    .line 24
    new-instance v13, Lcom/google/android/gms/internal/cast/zzfm;

    const-string v15, "BROADCAST_ERROR_KEY_EXCHANGE_FAILED_TO_FIND_DEVICE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/cast/zzfm;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/cast/zzfm;->zzamg:Lcom/google/android/gms/internal/cast/zzfm;

    .line 25
    new-instance v15, Lcom/google/android/gms/internal/cast/zzfm;

    const-string v14, "BROADCAST_ERROR_KEY_EXCHANGE_FAILED_TO_CONNECT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/gms/internal/cast/zzfm;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/cast/zzfm;->zzamh:Lcom/google/android/gms/internal/cast/zzfm;

    .line 26
    new-instance v14, Lcom/google/android/gms/internal/cast/zzfm;

    const-string v12, "BROADCAST_ERROR_KEY_EXCHANGE_REQUEST_TIMED_OUT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/gms/internal/cast/zzfm;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/cast/zzfm;->zzami:Lcom/google/android/gms/internal/cast/zzfm;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/google/android/gms/internal/cast/zzfm;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 27
    sput-object v12, Lcom/google/android/gms/internal/cast/zzfm;->zzamj:[Lcom/google/android/gms/internal/cast/zzfm;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/cast/zzfp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzfp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzfm;->zzagi:Lcom/google/android/gms/internal/cast/zzlf;

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
    iput p3, p0, Lcom/google/android/gms/internal/cast/zzfm;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/cast/zzfm;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzfm;->zzamj:[Lcom/google/android/gms/internal/cast/zzfm;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/cast/zzfm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/cast/zzfm;

    return-object v0
.end method

.method public static zzfx()Lcom/google/android/gms/internal/cast/zzli;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/zzfo;->zzago:Lcom/google/android/gms/internal/cast/zzli;

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
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzfm;->value:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzfm;->name()Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzfm;->value:I

    return v0
.end method
