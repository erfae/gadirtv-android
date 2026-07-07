.class public final enum Lcom/google/android/gms/internal/cast/zzjf;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzlg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/cast/zzjf;",
        ">;",
        "Lcom/google/android/gms/internal/cast/zzlg;"
    }
.end annotation


# static fields
.field private static final zzagi:Lcom/google/android/gms/internal/cast/zzlf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzlf<",
            "Lcom/google/android/gms/internal/cast/zzjf;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zzazc:Lcom/google/android/gms/internal/cast/zzjf;

.field private static final enum zzazd:Lcom/google/android/gms/internal/cast/zzjf;

.field private static final enum zzaze:Lcom/google/android/gms/internal/cast/zzjf;

.field private static final enum zzazf:Lcom/google/android/gms/internal/cast/zzjf;

.field private static final enum zzazg:Lcom/google/android/gms/internal/cast/zzjf;

.field private static final enum zzazh:Lcom/google/android/gms/internal/cast/zzjf;

.field private static final synthetic zzazi:[Lcom/google/android/gms/internal/cast/zzjf;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/cast/zzjf;

    const-string v1, "TCP_PROBING_SUMMARY_RESULT_CODE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/cast/zzjf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzjf;->zzazc:Lcom/google/android/gms/internal/cast/zzjf;

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/cast/zzjf;

    const-string v3, "TCP_PROBING_SUMMARY_RESULT_CODE_SKIPPED_REACHED_ATTEMPT_LIMIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/cast/zzjf;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/cast/zzjf;->zzazd:Lcom/google/android/gms/internal/cast/zzjf;

    .line 19
    new-instance v3, Lcom/google/android/gms/internal/cast/zzjf;

    const-string v5, "TCP_PROBING_SUMMARY_RESULT_CODE_SKIPPED_ALREADY_PUBLISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/cast/zzjf;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/cast/zzjf;->zzaze:Lcom/google/android/gms/internal/cast/zzjf;

    .line 20
    new-instance v5, Lcom/google/android/gms/internal/cast/zzjf;

    const-string v7, "TCP_PROBING_SUMMARY_RESULT_CODE_SKIPPED_DISABLED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/cast/zzjf;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/cast/zzjf;->zzazf:Lcom/google/android/gms/internal/cast/zzjf;

    .line 21
    new-instance v7, Lcom/google/android/gms/internal/cast/zzjf;

    const-string v9, "TCP_PROBING_SUMMARY_RESULT_CODE_SUCCESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/cast/zzjf;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/cast/zzjf;->zzazg:Lcom/google/android/gms/internal/cast/zzjf;

    .line 22
    new-instance v9, Lcom/google/android/gms/internal/cast/zzjf;

    const-string v11, "TCP_PROBING_SUMMARY_RESULT_CODE_FAIL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/cast/zzjf;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/cast/zzjf;->zzazh:Lcom/google/android/gms/internal/cast/zzjf;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/android/gms/internal/cast/zzjf;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 23
    sput-object v11, Lcom/google/android/gms/internal/cast/zzjf;->zzazi:[Lcom/google/android/gms/internal/cast/zzjf;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/cast/zzje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzje;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzjf;->zzagi:Lcom/google/android/gms/internal/cast/zzlf;

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
    iput p3, p0, Lcom/google/android/gms/internal/cast/zzjf;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/cast/zzjf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzjf;->zzazi:[Lcom/google/android/gms/internal/cast/zzjf;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/cast/zzjf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/cast/zzjf;

    return-object v0
.end method

.method public static zzfx()Lcom/google/android/gms/internal/cast/zzli;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/zzjh;->zzago:Lcom/google/android/gms/internal/cast/zzli;

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
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzjf;->value:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzjf;->name()Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzjf;->value:I

    return v0
.end method
