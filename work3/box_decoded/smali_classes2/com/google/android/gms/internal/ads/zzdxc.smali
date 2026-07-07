.class final Lcom/google/android/gms/internal/ads/zzdxc;
.super Lcom/google/android/gms/internal/ads/zzdwt;
.source "com.google.android.gms:play-services-gass@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdwt<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final zzhvo:Lcom/google/android/gms/internal/ads/zzdxc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdxc<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient mask:I

.field private final transient size:I

.field private final transient zzaht:I

.field private final transient zzhvp:[Ljava/lang/Object;

.field private final transient zzhvq:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v6, Lcom/google/android/gms/internal/ads/zzdxc;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdxc;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v6, Lcom/google/android/gms/internal/ads/zzdxc;->zzhvo:Lcom/google/android/gms/internal/ads/zzdxc;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdwt;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxc;->zzhvp:[Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdxc;->zzhvq:[Ljava/lang/Object;

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzdxc;->mask:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdxc;->zzaht:I

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzdxc;->size:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxc;->zzhvq:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdwi;->zzeo(I)I

    move-result v2

    .line 14
    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdxc;->mask:I

    and-int/2addr v2, v3

    .line 15
    aget-object v3, v0, v2

    if-nez v3, :cond_2

    return v1

    .line 18
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdxc;->zzaht:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwl;->zzayp()Lcom/google/android/gms/internal/ads/zzdxh;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdxc;->size:I

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxc;->zzhvp:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdxc;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdxc;->size:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final zzayp()Lcom/google/android/gms/internal/ads/zzdxh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdxh<",
            "TE;>;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwl;->zzayt()Lcom/google/android/gms/internal/ads/zzdwm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwl;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdxh;

    return-object v0
.end method

.method final zzayq()[Ljava/lang/Object;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxc;->zzhvp:[Ljava/lang/Object;

    return-object v0
.end method

.method final zzayr()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final zzays()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdxc;->size:I

    return v0
.end method

.method final zzayu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final zzaza()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final zzazb()Lcom/google/android/gms/internal/ads/zzdwm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdwm<",
            "TE;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxc;->zzhvp:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdxc;->size:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwm;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzdwm;

    move-result-object v0

    return-object v0
.end method
