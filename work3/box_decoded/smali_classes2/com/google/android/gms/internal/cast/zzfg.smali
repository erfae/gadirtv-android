.class public final enum Lcom/google/android/gms/internal/cast/zzfg;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzlg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/cast/zzfg;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzlg;"
    }
.end annotation


# static fields
.field private static final zzagi:Lcom/google/android/gms/internal/cast/zzlf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzlf<",
            "Lcom/google/android/gms/internal/cast/zzfg;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum zzalc:Lcom/google/android/gms/internal/cast/zzfg;

.field public static final enum zzald:Lcom/google/android/gms/internal/cast/zzfg;

.field private static final enum zzale:Lcom/google/android/gms/internal/cast/zzfg;

.field private static final enum zzalf:Lcom/google/android/gms/internal/cast/zzfg;

.field private static final enum zzalg:Lcom/google/android/gms/internal/cast/zzfg;

.field private static final enum zzalh:Lcom/google/android/gms/internal/cast/zzfg;

.field private static final enum zzali:Lcom/google/android/gms/internal/cast/zzfg;

.field private static final enum zzalj:Lcom/google/android/gms/internal/cast/zzfg;

.field private static final enum zzalk:Lcom/google/android/gms/internal/cast/zzfg;

.field public static final enum zzall:Lcom/google/android/gms/internal/cast/zzfg;

.field public static final enum zzalm:Lcom/google/android/gms/internal/cast/zzfg;

.field private static final enum zzaln:Lcom/google/android/gms/internal/cast/zzfg;

.field public static final enum zzalo:Lcom/google/android/gms/internal/cast/zzfg;

.field public static final enum zzalp:Lcom/google/android/gms/internal/cast/zzfg;

.field private static final synthetic zzalq:[Lcom/google/android/gms/internal/cast/zzfg;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/cast/zzfg;

    const-string v1, "APP_SESSION_REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/cast/zzfg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzfg;->zzalc:Lcom/google/android/gms/internal/cast/zzfg;

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/cast/zzfg;

    const-string v3, "APP_SESSION_REASON_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/cast/zzfg;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/cast/zzfg;->zzald:Lcom/google/android/gms/internal/cast/zzfg;

    .line 19
    new-instance v3, Lcom/google/android/gms/internal/cast/zzfg;

    const-string v5, "APP_SESSION_NETWORK_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/cast/zzfg;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/cast/zzfg;->zzale:Lcom/google/android/gms/internal/cast/zzfg;

    .line 20
    new-instance v5, Lcom/google/android/gms/internal/cast/zzfg;

    const-string v7, "APP_SESSION_NETWORK_RECOVERED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/cast/zzfg;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/cast/zzfg;->zzalf:Lcom/google/android/gms/internal/cast/zzfg;

    .line 21
    new-instance v7, Lcom/google/android/gms/internal/cast/zzfg;

    const-string v9, "APP_SESSION_RECEIVER_CONNECTION_LOSS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/cast/zzfg;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/cast/zzfg;->zzalg:Lcom/google/android/gms/internal/cast/zzfg;

    .line 22
    new-instance v9, Lcom/google/android/gms/internal/cast/zzfg;

    const-string v11, "APP_SESSION_RECEIVER_CONNECTION_RECOVERED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/cast/zzfg;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/cast/zzfg;->zzalh:Lcom/google/android/gms/internal/cast/zzfg;

    .line 23
    new-instance v11, Lcom/google/android/gms/internal/cast/zzfg;

    const-string v13, "APP_SESSION_APP_BACKGROUNDED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/cast/zzfg;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/cast/zzfg;->zzali:Lcom/google/android/gms/internal/cast/zzfg;

    .line 24
    new-instance v13, Lcom/google/android/gms/internal/cast/zzfg;

    const-string v15, "APP_SESSION_APP_FOREGROUNDED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/cast/zzfg;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/cast/zzfg;->zzalj:Lcom/google/android/gms/internal/cast/zzfg;

    .line 25
    new-instance v15, Lcom/google/android/gms/internal/cast/zzfg;

    const-string v14, "APP_SESSION_APP_STOPPED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/gms/internal/cast/zzfg;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/cast/zzfg;->zzalk:Lcom/google/android/gms/internal/cast/zzfg;

    .line 26
    new-instance v14, Lcom/google/android/gms/internal/cast/zzfg;

    const-string v12, "APP_SESSION_CASTING_STOPPED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/gms/internal/cast/zzfg;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/cast/zzfg;->zzall:Lcom/google/android/gms/internal/cast/zzfg;

    .line 27
    new-instance v12, Lcom/google/android/gms/internal/cast/zzfg;

    const-string v10, "APP_SESSION_RESUMED_FROM_SAVED_SESSION"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/google/android/gms/internal/cast/zzfg;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/cast/zzfg;->zzalm:Lcom/google/android/gms/internal/cast/zzfg;

    .line 28
    new-instance v10, Lcom/google/android/gms/internal/cast/zzfg;

    const-string v8, "APP_SESSION_RESUMED_FROM_OPEN_URL"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/google/android/gms/internal/cast/zzfg;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/cast/zzfg;->zzaln:Lcom/google/android/gms/internal/cast/zzfg;

    .line 29
    new-instance v8, Lcom/google/android/gms/internal/cast/zzfg;

    const-string v6, "APP_SESSION_NETWORK_NOT_REACHABLE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/google/android/gms/internal/cast/zzfg;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/cast/zzfg;->zzalo:Lcom/google/android/gms/internal/cast/zzfg;

    .line 30
    new-instance v6, Lcom/google/android/gms/internal/cast/zzfg;

    const-string v4, "APP_SESSION_GMSCORE_SERVICE_DISCONNECTED"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/google/android/gms/internal/cast/zzfg;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/cast/zzfg;->zzalp:Lcom/google/android/gms/internal/cast/zzfg;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/google/android/gms/internal/cast/zzfg;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    aput-object v6, v4, v2

    .line 31
    sput-object v4, Lcom/google/android/gms/internal/cast/zzfg;->zzalq:[Lcom/google/android/gms/internal/cast/zzfg;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/cast/zzfj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzfj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzfg;->zzagi:Lcom/google/android/gms/internal/cast/zzlf;

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
    iput p3, p0, Lcom/google/android/gms/internal/cast/zzfg;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/cast/zzfg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzfg;->zzalq:[Lcom/google/android/gms/internal/cast/zzfg;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/cast/zzfg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/cast/zzfg;

    return-object v0
.end method

.method public static zzfx()Lcom/google/android/gms/internal/cast/zzli;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/zzfi;->zzago:Lcom/google/android/gms/internal/cast/zzli;

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
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzfg;->value:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzfg;->name()Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzfg;->value:I

    return v0
.end method
