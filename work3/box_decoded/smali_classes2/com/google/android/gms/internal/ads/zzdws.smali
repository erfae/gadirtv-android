.class public final Lcom/google/android/gms/internal/ads/zzdws;
.super Lcom/google/android/gms/internal/ads/zzdwk;
.source "com.google.android.gms:play-services-gass@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdwk<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private zzaht:I

.field private zzhvc:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwk;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwk;-><init>(I)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwt;->zzeq(I)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzhvc:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/util/Iterator;)Lcom/google/android/gms/internal/ads/zzdwn;
    .locals 1

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdvv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwn;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwn;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final synthetic zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwk;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwn;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwn;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdws;

    return-object p1
.end method

.method public final synthetic zzac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwn;
    .locals 5

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdvv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzhvc:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdws;->size:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwt;->zzeq(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzhvc:[Ljava/lang/Object;

    array-length v2, v1

    if-gt v0, v2, :cond_2

    .line 39
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 41
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdwi;->zzeo(I)I

    move-result v2

    :goto_0
    and-int/2addr v2, v0

    .line 43
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzhvc:[Ljava/lang/Object;

    aget-object v4, v3, v2

    if-nez v4, :cond_0

    .line 45
    aput-object p1, v3, v2

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzaht:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzaht:I

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwk;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwk;

    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzhvc:[Ljava/lang/Object;

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwk;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwk;

    return-object p0
.end method

.method public final zzayz()Lcom/google/android/gms/internal/ads/zzdwt;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdwt<",
            "TE;>;"
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdws;->size:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzhvc:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdws;->size:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwt;->zzeq(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzhvc:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdws;->size:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzhus:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzdwt;->zzx(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzhus:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdws;->size:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzhus:[Ljava/lang/Object;

    :goto_0
    move-object v3, v0

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxc;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzaht:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzhvc:[Ljava/lang/Object;

    array-length v2, v5

    add-int/lit8 v6, v2, -0x1

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzdws;->size:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdxc;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_1

    .line 14
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdws;->size:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzhus:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzdwt;->zzb(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwt;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwt;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdws;->size:I

    .line 16
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzhut:Z

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzhvc:[Ljava/lang/Object;

    return-object v0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzhus:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwt;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwt;

    move-result-object v0

    return-object v0

    .line 7
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxc;->zzhvo:Lcom/google/android/gms/internal/ads/zzdxc;

    return-object v0
.end method

.method public final synthetic zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdwn;
    .locals 1

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdvv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdws;->zzhvc:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwn;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwn;

    goto :goto_0

    .line 25
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwk;->zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdwn;

    :cond_1
    return-object p0
.end method
