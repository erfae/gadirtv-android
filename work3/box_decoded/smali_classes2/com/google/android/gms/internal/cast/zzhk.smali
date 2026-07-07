.class public final enum Lcom/google/android/gms/internal/cast/zzhk;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzlg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/cast/zzhk;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzlg;"
    }
.end annotation


# static fields
.field private static final zzagi:Lcom/google/android/gms/internal/cast/zzlf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzlf<",
            "Lcom/google/android/gms/internal/cast/zzhk;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzauc:Lcom/google/android/gms/internal/cast/zzhk;

.field private static final enum zzaud:Lcom/google/android/gms/internal/cast/zzhk;

.field private static final enum zzaue:Lcom/google/android/gms/internal/cast/zzhk;

.field private static final enum zzauf:Lcom/google/android/gms/internal/cast/zzhk;

.field private static final enum zzaug:Lcom/google/android/gms/internal/cast/zzhk;

.field private static final enum zzauh:Lcom/google/android/gms/internal/cast/zzhk;

.field private static final enum zzaui:Lcom/google/android/gms/internal/cast/zzhk;

.field private static final enum zzauj:Lcom/google/android/gms/internal/cast/zzhk;

.field private static final enum zzauk:Lcom/google/android/gms/internal/cast/zzhk;

.field private static final enum zzaul:Lcom/google/android/gms/internal/cast/zzhk;

.field private static final enum zzaum:Lcom/google/android/gms/internal/cast/zzhk;

.field private static final enum zzaun:Lcom/google/android/gms/internal/cast/zzhk;

.field private static final enum zzauo:Lcom/google/android/gms/internal/cast/zzhk;

.field private static final synthetic zzaup:[Lcom/google/android/gms/internal/cast/zzhk;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/cast/zzhk;

    const-string v1, "MDNS_RESPONSE_ERROR_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/cast/zzhk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzhk;->zzauc:Lcom/google/android/gms/internal/cast/zzhk;

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/cast/zzhk;

    const-string v3, "ERROR_NOT_RESPONSE_MESSAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/cast/zzhk;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/cast/zzhk;->zzaud:Lcom/google/android/gms/internal/cast/zzhk;

    .line 19
    new-instance v3, Lcom/google/android/gms/internal/cast/zzhk;

    const-string v5, "ERROR_NO_ANSWERS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/cast/zzhk;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/cast/zzhk;->zzaue:Lcom/google/android/gms/internal/cast/zzhk;

    .line 20
    new-instance v5, Lcom/google/android/gms/internal/cast/zzhk;

    const-string v7, "ERROR_READING_RESPONSE_LABELS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/cast/zzhk;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/cast/zzhk;->zzauf:Lcom/google/android/gms/internal/cast/zzhk;

    .line 21
    new-instance v7, Lcom/google/android/gms/internal/cast/zzhk;

    const-string v9, "ERROR_READING_IP4_ADDRESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/cast/zzhk;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/cast/zzhk;->zzaug:Lcom/google/android/gms/internal/cast/zzhk;

    .line 22
    new-instance v9, Lcom/google/android/gms/internal/cast/zzhk;

    const-string v11, "ERROR_READING_IP6_ADDRESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/cast/zzhk;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/cast/zzhk;->zzauh:Lcom/google/android/gms/internal/cast/zzhk;

    .line 23
    new-instance v11, Lcom/google/android/gms/internal/cast/zzhk;

    const-string v13, "ERROR_READING_POINTER_RECORD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/cast/zzhk;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/cast/zzhk;->zzaui:Lcom/google/android/gms/internal/cast/zzhk;

    .line 24
    new-instance v13, Lcom/google/android/gms/internal/cast/zzhk;

    const-string v15, "ERROR_SKIPPING_POINTER_RECORD"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/cast/zzhk;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/cast/zzhk;->zzauj:Lcom/google/android/gms/internal/cast/zzhk;

    .line 25
    new-instance v15, Lcom/google/android/gms/internal/cast/zzhk;

    const-string v14, "ERROR_READING_SERVICE_RECORD"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/gms/internal/cast/zzhk;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/cast/zzhk;->zzauk:Lcom/google/android/gms/internal/cast/zzhk;

    .line 26
    new-instance v14, Lcom/google/android/gms/internal/cast/zzhk;

    const-string v12, "ERROR_SKIPPING_SERVICE_RECORD"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/gms/internal/cast/zzhk;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/cast/zzhk;->zzaul:Lcom/google/android/gms/internal/cast/zzhk;

    .line 27
    new-instance v12, Lcom/google/android/gms/internal/cast/zzhk;

    const-string v10, "ERROR_READING_TEXT_RECORD"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/google/android/gms/internal/cast/zzhk;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/cast/zzhk;->zzaum:Lcom/google/android/gms/internal/cast/zzhk;

    .line 28
    new-instance v10, Lcom/google/android/gms/internal/cast/zzhk;

    const-string v8, "ERROR_SKIPPING_UNKNOWN_RECORD"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/google/android/gms/internal/cast/zzhk;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/cast/zzhk;->zzaun:Lcom/google/android/gms/internal/cast/zzhk;

    .line 29
    new-instance v8, Lcom/google/android/gms/internal/cast/zzhk;

    const-string v6, "ERROR_END_OF_FILE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/google/android/gms/internal/cast/zzhk;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/cast/zzhk;->zzauo:Lcom/google/android/gms/internal/cast/zzhk;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/google/android/gms/internal/cast/zzhk;

    aput-object v0, v6, v2

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

    aput-object v8, v6, v4

    .line 30
    sput-object v6, Lcom/google/android/gms/internal/cast/zzhk;->zzaup:[Lcom/google/android/gms/internal/cast/zzhk;

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/cast/zzhn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzhn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzhk;->zzagi:Lcom/google/android/gms/internal/cast/zzlf;

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
    iput p3, p0, Lcom/google/android/gms/internal/cast/zzhk;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/cast/zzhk;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzhk;->zzaup:[Lcom/google/android/gms/internal/cast/zzhk;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/cast/zzhk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/cast/zzhk;

    return-object v0
.end method

.method public static zzfx()Lcom/google/android/gms/internal/cast/zzli;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/zzhm;->zzago:Lcom/google/android/gms/internal/cast/zzli;

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
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzhk;->value:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzhk;->name()Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzhk;->value:I

    return v0
.end method
