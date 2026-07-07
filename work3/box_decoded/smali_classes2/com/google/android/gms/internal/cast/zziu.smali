.class public final enum Lcom/google/android/gms/internal/cast/zziu;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzlg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/cast/zziu;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzlg;"
    }
.end annotation


# static fields
.field private static final zzagi:Lcom/google/android/gms/internal/cast/zzlf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzlf<",
            "Lcom/google/android/gms/internal/cast/zziu;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzayi:Lcom/google/android/gms/internal/cast/zziu;

.field private static final enum zzayj:Lcom/google/android/gms/internal/cast/zziu;

.field private static final enum zzayk:Lcom/google/android/gms/internal/cast/zziu;

.field private static final enum zzayl:Lcom/google/android/gms/internal/cast/zziu;

.field private static final enum zzaym:Lcom/google/android/gms/internal/cast/zziu;

.field private static final enum zzayn:Lcom/google/android/gms/internal/cast/zziu;

.field private static final enum zzayo:Lcom/google/android/gms/internal/cast/zziu;

.field private static final enum zzayp:Lcom/google/android/gms/internal/cast/zziu;

.field private static final enum zzayq:Lcom/google/android/gms/internal/cast/zziu;

.field private static final synthetic zzayr:[Lcom/google/android/gms/internal/cast/zziu;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/cast/zziu;

    const-string v1, "TCP_PROBER_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/cast/zziu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zziu;->zzayi:Lcom/google/android/gms/internal/cast/zziu;

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/cast/zziu;

    const-string v3, "TCP_PROBER_DEVICE_EXPIRED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/cast/zziu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/cast/zziu;->zzayj:Lcom/google/android/gms/internal/cast/zziu;

    .line 19
    new-instance v3, Lcom/google/android/gms/internal/cast/zziu;

    const-string v5, "TCP_PROBER_SUBTYPE_MDNS_MISSING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/cast/zziu;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/cast/zziu;->zzayk:Lcom/google/android/gms/internal/cast/zziu;

    .line 20
    new-instance v5, Lcom/google/android/gms/internal/cast/zziu;

    const-string v7, "TCP_PROBER_BLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/cast/zziu;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/cast/zziu;->zzayl:Lcom/google/android/gms/internal/cast/zziu;

    .line 21
    new-instance v7, Lcom/google/android/gms/internal/cast/zziu;

    const-string v9, "TCP_PROBER_CLOUD_DISCOVERY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/cast/zziu;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/cast/zziu;->zzaym:Lcom/google/android/gms/internal/cast/zziu;

    .line 22
    new-instance v9, Lcom/google/android/gms/internal/cast/zziu;

    const-string v11, "TCP_PROBER_GAIA_DISCOVERY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/cast/zziu;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/cast/zziu;->zzayn:Lcom/google/android/gms/internal/cast/zziu;

    .line 23
    new-instance v11, Lcom/google/android/gms/internal/cast/zziu;

    const-string v13, "TCP_PROBER_KNOWN_SESSION_ENDPOINT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/cast/zziu;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/cast/zziu;->zzayo:Lcom/google/android/gms/internal/cast/zziu;

    .line 24
    new-instance v13, Lcom/google/android/gms/internal/cast/zziu;

    const-string v15, "TCP_PROBER_APP_HINT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/cast/zziu;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/cast/zziu;->zzayp:Lcom/google/android/gms/internal/cast/zziu;

    .line 25
    new-instance v15, Lcom/google/android/gms/internal/cast/zziu;

    const-string v14, "TCP_PROBER_REFRESH_SESSION_ENDPOINT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/gms/internal/cast/zziu;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/cast/zziu;->zzayq:Lcom/google/android/gms/internal/cast/zziu;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/google/android/gms/internal/cast/zziu;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 26
    sput-object v14, Lcom/google/android/gms/internal/cast/zziu;->zzayr:[Lcom/google/android/gms/internal/cast/zziu;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/cast/zzix;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzix;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zziu;->zzagi:Lcom/google/android/gms/internal/cast/zzlf;

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
    iput p3, p0, Lcom/google/android/gms/internal/cast/zziu;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/cast/zziu;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zziu;->zzayr:[Lcom/google/android/gms/internal/cast/zziu;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/cast/zziu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/cast/zziu;

    return-object v0
.end method

.method public static zzfx()Lcom/google/android/gms/internal/cast/zzli;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/zziw;->zzago:Lcom/google/android/gms/internal/cast/zzli;

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
    iget v1, p0, Lcom/google/android/gms/internal/cast/zziu;->value:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zziu;->name()Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/gms/internal/cast/zziu;->value:I

    return v0
.end method
